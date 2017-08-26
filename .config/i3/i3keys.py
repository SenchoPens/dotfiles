#!/usr/bin/env python3
from collections import defaultdict


class Key:
    def __init__(self):
        self.upper_key = False
        self.lower_key = False


def parse_config(cfg):
    keys = {}

    for line in cfg:
        if line.startswith('bindsym'):
            _, key_comb, *action = line.split()
            keys[key_comb] = ' '.join(action)
    return keys


def repr_letter(boolean):
    return ('■' if boolean else '□')


def print_keyboard(keyboard):
    def repr_row(row):
        row_length = len(row)
        representation = [row, [], []]
        for letter in row:
            representation[1].append(repr_letter(keyboard[letter].upper_key))
            representation[2].append(repr_letter(keyboard[letter].lower_key))
        yield '┌' + ('─' * (row_length * 3)).replace('───', '──┬')[:-1] + '┐'
        yield '│' + ' │'.join(representation[0]) + ' │'
        yield '├' + ('──┼' * row_length)[:-1] + '┤'
        yield '│' + ' │'.join(representation[1]) + ' │'
        yield '│ ' + '│ '.join(representation[2]) + '│'
        yield '└' + ('─' * (len(representation[2]) * 3)).replace('───', '──┴')[:-1] + '┘'

    rows = ['1234567890-=', 'qwertyiuop[]', 'asdfghjkkl;\'', 'zxcvbnm,./']
    for i, row in enumerate(rows):
        for line in repr_row(row):
            print(' ' * i, line, sep='')


def main():
    with open('config') as cfg:
        keys = parse_config(cfg)
    keyboard = defaultdict(lambda: Key())
    upper_modifier_name = 'Shift'
    mod_name = '$mod'
    key_sep = '+'
    for key_comb in keys:
        if key_comb.startswith(mod_name):
            _, *main_keys = key_comb.split(key_sep)
            if main_keys[0] == upper_modifier_name:
                keyboard[main_keys[1]].upper_key = True
            else:
                keyboard[main_keys[0]].lower_key = True
    print_keyboard(keyboard)


main()


#!/usr/bin/env python3

import random
import pathlib
import sys

import sh


def pick_wallpaper(path):
    path_obj = pathlib.Path(path)
    wallpaper = random.choice(list(path_obj.iterdir()))
    sh.feh('--bg-scale', wallpaper)


if __name__ == '__main__':
    pick_wallpaper(sys.argv[1])


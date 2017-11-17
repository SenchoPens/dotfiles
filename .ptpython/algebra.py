from sympy import *


init_printing()

x = Symbol('x', real=True)


def sse(a, b, c):
    '''Find solutions for a square equation'''
    if b % 2 == 0:
        print(f'D/4 = {(b / 2) ** 2 - a * c}')
    else:
        print(f'D = {b ** 2 - 4 * a * c}')
    return solve(a * x ** 2 + b * x + c)

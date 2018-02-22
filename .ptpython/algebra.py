import numpy as np
from sympy import *

init_printing()

x = Symbol('x', real=True)
y = Symbol('y', real=True)
z = Symbol('z', real=True)
a = Symbol('a', real=True)
b = Symbol('b', real=True)
c = Symbol('c', real=True)
d = Symbol('d', real=True)


def _build_row(var_name, xs, len_):
    return var_name + ' |' + ' | '.join(str(x).rjust(len_) for x in xs)


def _draw_table(xs, ys):
    max_ = max(max(map((lambda x: len(str(x))), (x, y))) for x, y in zip(xs, ys))
    print()
    xs_row = _build_row('x', xs, max_)
    print(xs_row)
    print(len(xs_row) * '-')
    print(_build_row('y', ys, max_))
    print()


def draw_table(f, x0, rad):
    xs = np.arange(x0 - rad, x0 + rad + 1)
    ys = np.fromiter(map(f, xs), dtype=float)

    _draw_table(xs, ys)


def generate_reverse(*args, a=1):
    f = Polynomial(*args)

    def g(x):
        return a / f(x)
    
    return g


def sse(a, b, c):
    '''Find solutions for a square equation'''
    if b % 2 == 0:
        print(f'D/4 = {(b / 2) ** 2 - a * c}')
    else:
        print(f'D = {b ** 2 - 4 * a * c}')
    return solve(a * x ** 2 + b * x + c)



def dce(a, b, c, d, rad=4):
    '''Help to draw a cubic plot'''
    x_bias = b / (3 * a)
    print('f(x) -> g(x + b / 3a)\n'
          '              ||\n'
          f'              {x_bias}'
          )
    print()
    print('g(x) = y^3 + py + q = 0')
    print()
    print('p = (3ac - b^2) / 3a^2')
    p = (3 * c - b ** 2) / (3 * a ** 2)
    print(f'p = {p}')
    print()
    print('q = (2b^3 - 9abc + 27a^2d) / 27a^3')
    q = (d * b ** 3 - 9 * a * b * c + 27 * a ** 2 * d) / (27 * a ** 3)
    print(f'q = {q}')

    x0 = -x_bias

    f = generate_f(a, b, c, d)
    return f


def rest_squared(p):
    rests = set()
    for i in range(p):
        rests.add((i ** 2) % p)
    return rests


def find_cycle(n, p, max_length=10):
    rests = set()
    for i in range(1, max_length + 1):
        x = n ** i
        if (x % p) in rests:
            return i
        rests.add(x % p)
        print(i, x, x % p, sep='|')


def make_pascal_triangle(number_of_rows=10):
    triangle = []
    for i in range(number_of_rows):
        triangle.append([binomial(i, j) for j in range(i + 1)])
    return triangle


def es(t):
    '''Common pipeline: expand expression and then simplify it'''
    return t.expand().simplify()


""" ASTRO """

def lambdafrom(d, m=0, s=0):
    seconds = 60 * 4 * d + 4 * m
    return seconds // 3600, seconds % 3600 // 60, seconds % 60

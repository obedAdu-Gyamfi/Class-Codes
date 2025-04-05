#!/bin/python3

from itertools import zip_longest as z

def f(x):
    return (x**3 - 3*(x**2) + x - 1)
tol = 1e-6

def fp(x):
    return (3*(x**2) - 6*x + 1)
def phi(x):
    return (3*(x**2) + x - 1)**(1/3)

def Bisection(a,b):
    if (f(a) * f(b)) < 0:
        c = True
        fx = []
        while c:
            m = (a+b) / 2
            if (f(a) * f(m)) < 0:
                xi = (a + m) / 2
                b = m
            else:
                xi = (m + b) /2
                a = m
            fx.append(f(xi))
            if (abs(b - a)) < tol:
                c = False
    else:
        print("Sorry Root Not in Interval!")
    return (fx)

def secant(x0, x1):
    c = True
    fx = []
    while c:
        xi = (x0*f(x1) - x1*f(x0))/ (f(x1) - f(x0))
        x0 = x1
        x1 = xi
        fx.append(f(xi))
        if (abs(x1 - x0)) < tol:
            c = False
    return (fx)

def newton(x0):
    c = True
    fx = []
    while c:
        if fp(x0) != 0:
            h = - (f(x0)/fp(x0))
        else:
            raise ValueError("Division By Zero Error!")
            break
        xi = x0 + h
        fx.append(f(xi))
        if (abs(xi - x0)) < tol:
            c = False
        x0 = xi
    return (fx)

def fixedPoint(x0):
    x1 = phi(x0)
    fx = []
    c = True
    while c:
        x0 = x1
        x1 = phi(x0)
        fx.append(f(x0))
        if (abs(x1 - x0)) < tol:
            c = False
    return (fx)

m = Bisection(2,3)
n = secant(2,3)
k = newton(2)
x = fixedPoint(2)
max_iter = max(len(m), len(n), len(k), len(x))
steps = list(range(max_iter))


with open("data.dat","w") as f:
    for i, b, c, d, e  in z(steps, m, n, k, x, fillvalue=None):
        m_value = f"{float(b):.8f}" if b is not None else "---\t"
        n_value = f"{float(c):.8f}" if c is not None else "---\t"
        k_value = f"{float(d):.8f}" if d is not None else "---\t"
        x_value = f"{float(e):.8f}" if e is not None else "---\t"
        
        f.write(f"{i} \t {m_value} \t {n_value} \t {k_value} \t {x_value}\n")

fruits = ["mango", "pear", "orange"]
for i in fruits:
    print(i)


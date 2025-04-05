from itertools import zip_longest as zl

# Task 1:
tol = 1e-6
def f(x):
    return (x**3) - 3*(x**2) + x - 1

def fd(x):
    return 3*(x**2) -(6*x) + 1
def phi(x):
    return (3*(x**2) - x + 1)**(1/3)


def bisection(a,b):
    if (f(a) * f(b)) < 0:
        c = True
        init = (a+b)/2
        fx = [f(init)]
        while c:
            x0 = (a + b)/2
            if (f(a) * f(x0)) < 0:
                x1 = (a + x0) / 2
                b = x0
            else:
                x1 = (x0 + b) / 2
                a = x0
            fx.append(f(x1))
            if (abs(b - a) < tol):
                c = False
    else:
        print("Invalid Interval, choose a new interval!")
    return (fx)

def newton_raphson(x0):
    fx = []
    c = True
    while  c:
        if fd(x0) != 0:
            h = -f(x0)/fd(x0)
        else:
            print ("Division by Zero Error!")
            break
        x1 = x0 + h
        fx.append(f(x1))
        if (abs(x1- x0)) < tol:
            c = False
        x0 = x1
    return (fx)

def fixed_point(x0):
    fxi = []
    x1 = phi(x0)
    c = True
    while c:
        x0 = x1
        x1 = phi(x0)
        fxi.append(f(x0))
        if (abs(x1 - x0) < tol):
            c = False
    return (fxi)

def secant(x0,x1):
    fxi = []
    c = True
    while c:
        x_next = (x0*f(x1) - x1*f(x0))/(f(x1) - f(x0))
        x0 = x1
        x1 = x_next
        fxi.append(f(x_next))
        if (abs(x1 - x0)) < tol:
            c = False
    return (fxi)



b_values = bisection(2, 3)
n_values = newton_raphson(2)
fp_values = fixed_point(2)
s_values = secant(2, 3)

max_steps = max(
    len(b_values), len(n_values),len(fp_values),len(s_values)
)
step = list(range(max_steps))
    
with open("data.dat", "w") as file:
    file.write("#Iter \t #Bisection \t #Secant \t #Newton \t #Fixed-Point\n")
    for i, b_val, s_val, n_val, f_val in zl( step, b_values, s_values, n_values,fp_values, fillvalue=None
        ):
        b_str = f"{float(b_val):.10f}" if b_val is not None else "---\t"
        s_str = f"{float(s_val):.10f}" if s_val is not None else "---\t"
        n_str = f"{float(n_val):.10f}" if n_val is not None else "---\t"
        f_str = f"{float(f_val):.10f}" if f_val is not None else "---\t"
        file.write(
            f"{i}\t{b_str}\t{s_str}\t{n_str}\t{f_str}\n"
            )


#Task 2: Euler' Method
def dT(x):
    return -2.2067*(10**-12)*(x**4 - 81*(10**8))
def euler_method():
    T0 = 1200
    t0 = 0
    data = []
    r = []
    h = [480,240,120,60,30]
    hr = []
    for j in h:
        for i in range(j,480+1, j):
            t0 += j
            Ti = T0 + dT(T0)*j
            T0 = Ti
            if i == 480:
                data.append(T0)
                T0 = 1200
    return (h, data)

st, data = euler_method()
exact_euler = [1635.4,537.26,100.80,32.607,14.806]
with open("euler_data.dat", "w") as file:
    file.write("#Step Size \t #Temperature \t #Exact_Temperature\n")
    for i, j, k in zip(st, data,exact_euler):
        file.write(
            f"{i}\t{j} \t {k}\n"
        )


# Task 3: Challenge
def gaussian():
    #A = np.array(([17,14,23],[-7.54, -3.54, 2.7],[6,1,3]))
    #b = np.array([24.5,2.352,14])
    A = [
        [17,14,23],
        [-7.54, -3.54, 2.7],
        [6,1,3]
        ]
    b = [24.5,2.352,14]
    # Forward elimination

    n = len(A)

    # Forward elimination
    for i in range(n):
        if A[i][i] == 0:
            raise ValueError("Zero pivot encountered!")
        
        for j in range(i+1, n):
            ratio = A[j][i] / A[i][i]
            for k in range(n):
                A[j][k] -= ratio * A[i][k]
            b[j] -= ratio * b[i]

    # Back substitutio

    x = []
    for m in range(n):
        x.append(0)
    for i in range(n-1, -1, -1):
        s = 0
        for w in range(i+1, n):
            s += A[i][w] * x[w]
        x[i] = (b[i] - s) / A[i][i]
    for m in range(len(x)):
        print(f"{x[m]}")
gaussian()

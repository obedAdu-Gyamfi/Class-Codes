def mynthroot(n, r, x0, kmax, tol):
    k = 0
    xNew = x0
    xOld = xNew + 1
    while abs(xNew - xOld) >= tol and k <= kmax:
        xOld = xNew
        xNew = float(1) / n * ((n - 1) * xOld + r * xOld ** (1 - n))
        k = k + 1
    print("Nth Root: " , str(xNew))

result = mynthroot(5,32,7,20, 0.001)
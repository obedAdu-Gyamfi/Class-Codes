n = int(input("Enter n: "))
R = float(input("Enter R: "))
X0 = float(input("Enter X0: "))
tol = float(input("Enter tol: "))
kmax = int(input("Enter kmax: "))
k = 0
xNew = X0
xOld = xNew + 1
while abs(xNew - xOld) >= tol and k <= kmax:
    xOld = xNew
    xNew = float(1) / n * ((n - 1) * xOld + R * xOld ** (1 - n))
    k = k + 1
print("The nth Root of R: ",xNew)

import numpy as np
clause1 = ['m', 'o','n','e','y']
clause2 = ['m', 'a', 't','h']

m = len(clause1) + 1
n = len(clause2) + 1

A = np.zeros((m,n))
i = 0

for j in range(n):
    A[0,j] = i
    i += 1

i = 0
for j in range(m):
    A[j,0] = i
    i += 1
#i = 1
#j = 1
for i in range(n - 1):
    for j in range(m - 1 ):
        let1 = clause1[i - 1]
        let2 = clause2[j - 1]
        if let1 == let2:
             distance = min(A[i, j - 1], A[i - 1, j], A[i - 1, j - 1])
        else:
            distance = min(A[i, j - 1], A[i - 1, j], A[i - 1, j - 1]) + 1
print(distance)
print(A)
print('(',m,',',n,')')
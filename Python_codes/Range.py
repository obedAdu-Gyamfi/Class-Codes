
n = int(input("Enter data size: "))
max = 0
initMin = False
for k in range(1, n + 1, 1):
    data = float(input("Enter Data: "))
    if data > max:
        if initMin == False:
            min = data
        if data < min:
            min = data
        max = data
        initMin = True
    else:
        if data < min:
            min = data
range = max - min
print("Data Size:  ", n, "\n","Range:  " , range,"\n", "Max; ",max,"\n", "Min:  " ,min)

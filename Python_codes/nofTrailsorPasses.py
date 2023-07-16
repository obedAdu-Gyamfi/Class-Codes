inputs = [0] * (6)
passMark = 40
nofPasses = 0
nofTrails = 0
myfile = open("nofTrailsorPasses.txt", 'r')
nextLine = myfile.readline()
for k in range(0, len(inputs) - 1 + 1, 1):
    nofTrailsorPasses = float(nextLine)
    nextLine = myfile.readline()
    inputs[k] = nofTrailsorPasses
    if inputs[k] >= passMark:
        nofPasses = nofPasses + 1
    else:
        nofTrails = nofTrails + 1
myfile.close()
print("Passed: " ,nofPasses ,"\n","Trailed: ", nofTrails)

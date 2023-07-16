'''
Math Group 22
OBED ADU-GYAMFI - 8597421
MACCARTHY MARIAMA - 8605121
YEMANYI DERRICK - 8610721
MUNTAKA ISSAH - 8606021
YANKEY GEORGE - 8610521
'''
nStds = int(input("Enter Number of Students: "))
passMark = 40
nPass = 0
nFail = 0
sumPass = 0
sumTrail = 0
initTrail = False
initPass = False
for k in range(1, nStds + 1, 1):
    stdMark = float(input("Enter Students Marks: "))
    if stdMark >= passMark:
        nPass = nPass + 1
        sumPass = sumPass + stdMark
        if initPass == False:
            minPass = stdMark
            maxPass = stdMark
            initPass = True
        else:
            if stdMark >= maxPass:
                maxPass = stdMark
            if stdMark <= minPass:
                minPass = stdMark
    else:
        nFail = nFail + 1
        sumTrail = sumTrail + stdMark
        if initTrail == True:
            if stdMark >= maxTrail:
                maxTrail = stdMark
            if stdMark <= minTrail:
                minTrail = stdMark
        else:
            minTrail = stdMark
            maxTrail = stdMark
            initTrail = True
if nPass != 0 and nFail != 0:
    meanPass = sumPass / nPass
    meanTrail = sumTrail / nFail
    print("Class Size: ",str(nStds),"\n", "Number of Passes: " , str(nPass) , "\n" , "Number of Trails:  " , str(nFail) , "\n" , "Min/Max Trails: " , str(minTrail) , "/" , str(maxTrail) , "\n" , "Min/Max" , str(minPass) , "/" , str(maxPass) , "\n" , "Mean Pass Mark: " , str(meanPass) , "\n" , "Mean Trail Mark: " , str(meanTrail))
    if nPass != 0:
        meanPass = sumPass / nPass
        print("Class Size: " , str(nStds) , "\n" , "Number of Passes: " , str(nPass) , "\n" , "Number of Trails: " , str(nFail) , "\n" , "Min/Max Trails:  " , "Not Applicable." , "\n" , "Min/Max Pass: " , str(minPass) , "/" , str(maxPass) , "\n" , "Mean Pass Mark: " , str(meanPass) , "\n" , "Mean Trail Mark: " , "Not Applicable")
    else:
        meanTrail = sumTrail / nFail
        print("Class Size: " , str(nStds) , "\n" , "Number of Passes: " , str(nPass) , "\n" , "Number of Trails: " , str(nFail) , "\n" , "Min/Max Trails:  " , str(minTrail) , "/" , str(maxTrail) , "\n" , "Min/Max Pass: " , "Not Applicable" , "\n" , "Mean Pass Mark: " , "Not Applicable" , "\n" , "Mean Trail Mark: " , str(meanTrail))

# -*- coding: utf-8 -*-
"""
Created on Sat Mar 25 15:22:33 2023

@author: Administrator
"""
nStds = int(input())
passMark = 40
nPass = 0
nFail = 0
sumPass = 0
sumTrail = 0
initTrail = False
initPass = False
for k in range(1, nStds + 1, 1):
    print(" Exam Score?  ")
    stdMark = float(input())
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
    print("Class Size: " + str(nStds) + chr(13) + "Number of Passes: " + str(nPass) + chr(13) + "Number of Trails:  " + str(nFail) + chr(13) + "Min/Max Trails: " + str(minTrail) + "/" + str(maxTrail) + chr(13) + "Min/Max" + str(minPass) + "/" + str(maxPass) + chr(13) + "Mean Pass Mark: " + str(meanPass) + chr(13) + "Mean Trail Mark: " + str(meanTrail))
    if nPass != 0:
        meanPass = sumPass / nPass
        print("Class Size: " + str(nStds) + chr(13) + "Number of Passes: " + str(nPass) + chr(13) + "Number of Trails: " + str(nFail) + chr(13) + "Min/Max Trails:  " + "Not Applicable." + chr(13) + "Min/Max Pass: " + str(minPass) + "/" + str(maxPass) + chr(13) + "Mean Pass Mark: " + str(meanPass) + chr(13) + "Mean Trail Mark: " + "Not Applicable")
    else:
        meanTrail = sumTrail / nFail
        print("Class Size: " + str(nStds) + chr(13) + "Number of Passes: " + str(nPass) + chr(13) + "Number of Trails: " + str(nFail) + chr(13) + "Min/Max Trails:  " + str(minTrail) + "/" + str(maxTrail) + chr(13) + "Min/Max Pass: " + "Not Applicable" + chr(13) + "Mean Pass Mark: " + "Not Applicable" + chr(13) + "Mean Trail Mark: " + str(meanTrail))

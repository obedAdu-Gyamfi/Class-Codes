# -*- coding: utf-8 -*-
"""
Created on Thu Mar 23 11:48:28 2023

@author: Administrator
"""

# Note: The first function listed is executed. main() is not a special function in Matlab/Octave.
#function main()
x = float(input('Enter a value for x: '))
n = int(input('Enter a value for n: '))
lasTerm = 1
expx = lasTerm
for K in range(1, n + 1):
    upTerm = lasTerm * (x / K)
    expx = expx + upTerm
    lasTerm = upTerm
print("Exp(x) =  ", expx)
#end

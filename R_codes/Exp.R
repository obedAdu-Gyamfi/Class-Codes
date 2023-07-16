#function main()
x = as.numeric(readline('Enter a value for x: '))
n = as.integer(readline('Enter a value for n: '))
lasTerm = 1
expx = lasTerm
for (k in seq(1,n)){
  upTerm = lasTerm * (x / k)
  expx = expx + upTerm
  lasTerm = upTerm
}
print(expx)
cat("Exp(x) = " , expx ,"\n", "Hello World")

#end


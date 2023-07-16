mynthroot -> function(n, R, xo, kmax, tol){
  k = 0
  xNew = x0
  xOld = xNew + 1
  while (abs(xNew - xOld) >= tol && k <= kmax){
    xOld = xNew
    xNew = 1 / n * ((n - 1) * xOld + R * xOld ^ (1 - n))
    k = k + 1
  }
  cat(sprintf("The nth root of (%d, %d) = %.16f", n, R, xNew))
}

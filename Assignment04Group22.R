
#Math Group 22
#OBED ADU-GYAMFI - 8597421
#MACCARTHY MARIAMA - 8605121
#YEMANYI DERRICK - 8610721
#MUNTAKA ISSAH - 8606021
#YANKEY GEORGE - 8610521

nStds = as.integer(readline("Enter Number of Students: "))
passMark = 40
nPass = 0
nFail = 0
sumPass = 0
sumTrail = 0
initTrail = FALSE
initPass = FALSE
for (k in seq(1,nStds)){
  stdMark = as.numeric(readline("Enter Students Mark: "))
  if (stdMark >= passMark){
    nPass = nPass + 1
    sumPass = sumPass + stdMark
  
    if (initPass == FALSE){
      minPass = stdMark
      maxPass = stdMark
      initPass = TRUE
    }else {
        if (stdMark >= maxPass){
          maxPass = stdMark
        }
        if (stdMark <= minPass){
          minPass = stdMark
        }
    }
  }else {
      nFail = nFail + 1
      sumTrail = sumTrail + stdMark
    
      if (initTrail == TRUE){
        if (stdMark >= maxTrail){
          maxTrail = stdMark
          }
        
        if (stdMark <= minTrail){
          minTrail = stdMark
          }
      }else {
      minTrail = stdMark
      maxTrail = stdMark
      initTrail = TRUE
      }
  }
}
if ((nPass != 0) && (nFail != 0)){
  meanPass = sumPass / nPass
  meanTrail = sumTrail / nFail
}
  cat("Class Size: " , nStds,"\n","Number of Passes: ", nPass, "\n", "Number of Trails:  ",nFail,"\n","Min/Max Trails: ",minTrail, "/",maxTrail,"\n","Min/Max: ",minPass,"/",maxPass, "\n","Mean Pass Mark: ",meanPass, "\n","Mean Trail Mark: ",meanTrail ,"\n")
if (nPass != 0){
  meanPass = sumPass / nPass
  cat("Class Size: " ,nStds,"\n","Number of Passes: " ,nPass ,"\n","Number of Trails: ",nFail,"\n","Min/Max Trails:  " , "Not Applicable.","\n","Min/Max Pass: " ,minPass ,"/" ,maxPass , "\n","Mean Pass Mark: ", meanPass ,"\n" ,"Mean Trail Mark: " , "Not Applicable")
}else {
  meanTrail = sumTrail / nFail
  cat("Class Size: " ,nStds , "\n" , "Number of Passes: " , nPass, "\n" , "Number of Trails: " , nFail , "\n" , "Min/Max Trails:  " , minTrail , "/" , maxTrail , "\n" , "Min/Max Pass: " , "Not Applicable" , "\n" , "Mean Pass Mark: " , "Not Applicable" , "\n" , "Mean Trail Mark: " , meanTrail)
}
# MATH GROUP 22
# OBED ADU-GYAMFI - 8597421
# MACCARTHY MARIAMA - 8605121
# YEMANYI DERRICK - 8610721
# MUNTAKA ISSAH - 8606021
# YANKEY GEORGE - 8610521
maxNumAtmps = 3
courseCode = readline("Enter Course Code: ")
numAtmps = 1
repeat{    #This simulates a Do Loop
  markCA = as.numeric(readline("Enter Continuous Assessment: "))
  numAtmps = numAtmps + 1
  if (!((numAtmps <= maxNumAtmps) &&  !(markCA >= 0 && markCA <= 30))){
    break   #Exit loop}
  }
}
if ((markCA >= 0) && (markCA <= 30)){
  numAtmps = 1
  repeat{    #This simulates a Do Loop
    markExam = as.numeric(readline("Enter Examination Mark: "))
  numAtmps = numAtmps + 1
  if (!((numAtmps <= maxNumAtmps) && !(markCA >= 0 && markExam <= 70))) {
    break
    }#Exit loop
}
  if ((markExam >= 0) && (markExam <= 70)){
      markTotal = markCA + markExam
    if (markTotal >= 70){
      status = "Pass"
      grade = "A"
    }else{
      if (markTotal >= 60){
        status = "Pass"
        grade = "B"
    } else{
        if (markTotal >= 50){
          status = "Pass"
          grade = "C"
        }else{
          if (markTotal >= 40){
            status = "Pass"
            grade = "D"
          }else{
            status = "Trail"
            grade = "F"
        }
      }
    }
    }
    cat("====================" , "\n" , "Course: " , courseCode , "\n" , "Total Score: " , str(markTotal) , "\n" , "Grade: " , grade , "\n" , "Status: " , status , "\n" , "========================")
  }else{
  cat("An Invalid Exam Mark for " , courseCode , "\n" , "Number of Allowable Trails For Marks Exceeded" , courseCode , "\n" , "0 <= markExam <=70")
  }
}else{
  cat("An Invalid Cont. Assessment Mark for " , courseCode , "\n" , "Number of Allowable Trails For Marks Exceeded " , courseCode , "\n" , "0 <= markCA <= 30")
}

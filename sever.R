library(shiny)

makeVector <-function(fico,EmpStatus,BKStatus,FCStatus){
  if (fico >=700 && EmpStatus=="Full time" && BKStatus=="No" && FCStatus=="No")
    {print("Congratulation, you have passed the screen. We will write a home loan pre-qualification letter for your new home search")}
  else {print("Sorry, we can write a home loan pre-qualification letter for your new home search")}
#  return(m)
}
shinyServer(function(input, output) {
  output$decision <-renderPrint({makeVector(input$fico,input$EmpStatus,input$BKStatus,input$FCStatus)})
  })

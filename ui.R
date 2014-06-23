library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Home Loan Pre-Qualification Letter Screen"),
    sidebarPanel(
      sliderInput("fico", "FICO Score:", min=0, max=900, value=500, step=1),
      selectInput("EmpStatus", label = h3("Emplyment Status"), 
                  choices = list("Full time" = 1, "Part time" = 2, "Self Emp" = 3, "Umempoyment" = 4), selected = 1),
      selectInput("BKStatus", label = h3("Bankcrupcy Status"), choices = list("No" = 1, "Yes" = 0), selected = 1),
      selectInput("FCStatus", label = h3("Foreclosure Status"), choices = list("No" = 1, "Yes" = 0), selected = 1),
      dateInput("AppDate","Application Date:"),
      submitButton('Submit')
      ),
    mainPanel(
      h4('Our Decision'),
      verbatimTextOutput("decision")
      )
))
library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Subset data from a CSV before analyzing"),
  sidebarPanel(fileInput(inputId = "DataFile", label = "Upload list the data")),
  mainPanel(uiOutput("Panels"))
))

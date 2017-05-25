# load libraries
library(shiny)
library(randomForest)

# Define server logic required to output prediction
shinyServer(function(input, output) {
  # output to screen
  output$text <- renderText({
    # load model
    load('tr.Rda')
    
    # assemble dataframe with input from user
    df <- data.frame(AT=input$slider1, V=input$slider2, AP=input$slider3, RH=input$slider4)
    
    round(predict(tr, newdata = df), 1)})
  
})

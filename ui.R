# load libraries
library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  titlePanel("Combined Cycle Power Plant Output Prediction"),
  sidebarLayout(
    sidebarPanel(h3('Operating Parameters'),
      sliderInput('slider1',"Temperature [\u00b0C]", min = 0, max = 50, value = 25),
      sliderInput('slider2','Vacuum [cm Hg]', min = 25, max = 85, value = 50),
      sliderInput('slider3','Ambient Pressure [milibar]', min = 990, max = 1034, value = 1013),
      sliderInput('slider4','Relative Humidity [%]', min = 25, max = 100, value = 75)),
    mainPanel(
      h1('Power Output [MW]'),
      tags$head(tags$style("#text{color: red;
                                 font-size: 50px;
                           font-weight: bold;
                           }")),
      textOutput("text"),
      br(),
      h2('Instructions'),
      h3('Select desired operating conditions using the sliders on the left. Estimated output 
        power will be shown above (in red).', 
      h3('For more background information on combined cycle power 
        plants see here.' , a("Link", href="http://rpubs.com/fpiatti/279845"))))
               )
                  )
        )

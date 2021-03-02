library(shiny)
library(gapminder)
library(ggplot2)
data("gapminder")
ui <- shinyUI(fluidPage(
  h3("Choose variables of data Diamonds:"),
  sliderInput(inputId = "num", label = "Year", value = c(1952,2007),
              min = 1952, max = 2007, step = 5),
  radioButtons(inputId = "n", label = "Continent", 
               choices = c("Asia", "Europe", "Africa", "Americas", "Oceania")),
  h3("or choose:"),
  selectInput(inputId = "m", label = "Country", choices = unique(gapminder$country)),
  plotOutput("gap")
))
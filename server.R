server <- shinyServer(function(input, output){
  output$gap <- renderPlot({ggplot(subset(gapminder, continent == input$n & year == input$num
                                          | country == input$m),
                                   aes(x = continent, y = pop))+
      geom_boxplot()+
      labs(y = "Population",
           title = "Data Diamonds")
  })
})
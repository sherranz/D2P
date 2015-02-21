library(shiny)
library(datasets)

appData <- mtcars
appData$am <- factor(appData$am, labels = c("Automatic", "Manual"))

shinyServer(function(input, output) {
  
  fText<-reactive({
    paste("mpg ~", input$variable)
  })
  
  fTextRxn<-reactive({
    paste("mpg ~", "as.integer(", input$variable, ")")
  })
  
  fit<-reactive({
    lm(as.formula(fTextRxn()), data=appData)
  })
  
  output$caption<-renderText({
    fText()
  })
  
  output$appBoxPlot<-renderPlot({
    boxplot(as.formula(fText()), 
            data = appData)
  })
  
  output$fit<-renderPrint({
    summary(fit())
  })
  
  output$appPlot<-renderPlot({
    with(appData, {
      plot(as.formula(fTextRxn()))
      abline(fit(), col=2)
    })
  })
})
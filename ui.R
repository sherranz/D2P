library(shiny)

shinyUI(
  fluidPage(
    titlePanel("Regression Analysis and Boxplot of Selected Variable and MPG"),
      sidebarLayout(
        mainPanel(
                          
          tabsetPanel(type = "pills",
            tabPanel("Regression Analysis", 
                    plotOutput("appPlot"),
                    verbatimTextOutput("fit")
                    ),
            tabPanel("Box Plot", 
                    plotOutput("appBoxPlot")
                    )
          )
        ),
                          
        sidebarPanel(
          selectInput("variable", "Please select a variable:",
            c("1/4 mile time" = "qsec",
              "Displacement (cu.in.)" = "disp",
              "Horsepower" = "hp",
              "No. of carburetors" = "carb",
              "No. of cylinders" = "cyl",
              "No. of forward gears" = "gear",
              "Rear axle ratio" = "drat",
              "Transmission" = "am",
              "V/S" = "vs",
              "Weight (lb/1000)" = "wt" 
            )
          ),
          h4(textOutput("caption")),
          br(),
          div('The data set used in this regression is from mtcar. 
              This was based on the previous course `Regression Models`.',
              style = 'color:blue'),
          br(),
          div('Over here, we are applying Shiny to make the analysis a lot quicker for users.
              In this interface, we have 2 tabs to select from, `Regression Analysis` and ` Box Plot`.
              By selecting a variable above, you can quickly obtain the output in both tabs.' ,
              style = 'color:blue')
        )
    )
  )
)
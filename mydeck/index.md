---
title: "mtcars Regression Analysis"
author: "Juno"
framework: io2012
output: pdf_document
hitheme: tomorrow
job: null
knit: slidify::knit2slides
mode: selfcontained
highlighter: highlight.js
subtitle: A Developing Data Products Project
ext_widgets:
  rCharts:
  - libraries/nvd3
  - libraries/morris
  - libraries/polycharts
widgets:
- bootstrap
- interactive
---
## Objective

- The `objective` of this presentation is to showcase the use of Shiny on the day-to-day analysis of data. Shiny allows the ease of data analysis using R capabilities for users who are not data scientists. 

- This is a simple yet powerful tool to present data and predict possible outcomes, in a web-based interactive environment. 

- The dataset used would be `mtcars` that was used during the course `Regression Models`.

- The Shiny app developed was to show how simple it is to create simple regression analysis tool, coupled with boxplot, and allow users to study the relationship of different variables on `mpg`.

--- .class #id

## Introduction to mtcars dataset

###### Description

The data was extracted from the 1974 Motor Trend US magazine, and comprises fuel consumption and 10 aspects of automobile design and performance for 32 automobiles (1973-74 models).

###### Format

A data frame with 32 observations on 11 variables.


```r
head(mtcars,2)
```

```
##               mpg cyl disp  hp drat    wt  qsec vs am gear carb
## Mazda RX4      21   6  160 110  3.9 2.620 16.46  0  1    4    4
## Mazda RX4 Wag  21   6  160 110  3.9 2.875 17.02  0  1    4    4
```

--- .class #id

## The Shiny App

- The Shiny app has two panels, a main panel to display the graphs and a side panel that allow users to select for the variables to be compared to `mpg`.

- It also have `regression analysis` and `box plot` tabs for users to see the data behaviour.
![screenshot](https://raw.githubusercontent.com/TANJH1/D2P/master/images/screenshot.png)

--- .class #id

## Links

### Github repository 
https://github.com/TANJH1/D2P

### Shiny App Link
http://junorayleigh.shinyapps.io/RegressionBoxPlotMPG

Please login to Shinyapp to see the app. Some browser settings will automatically go into https mode, and render the app non-functional.

### Presentation link
http://rpubs.com/juno/RegressionBoxPlotMPG

library(markdown)

pageWithSidebar(
  headerPanel('Mtcars K-means Clustering'),
  
  sidebarPanel(
    selectInput('xcol', 'Characteristics 1', names(mtcars)),
    selectInput('ycol', 'Characteristics 2', names(mtcars),
                selected=names(mtcars)[[2]]),
    numericInput('clusters', 'Cluster count', 3,
                 min = 1, max = 9),
    HTML(
      paste(
        h4("Quick Guide"),'<br/>',
        h5("The app uses k-means clustering to explore the relationships between the characteristcs of different cars."),'<br/>',
        h5("You can select different characteristics from the dropdown menu; or different number of clustering groups."),
        h5("List of the characteristics:"), 
        tags$ul(
          tags$li("mpg - miles per gallon"), 
          tags$li("cyl - number of cynlinders") , 
          tags$li("disp - displacement") , 
          tags$li("hp - horse power") , 
          tags$li("drat - Rear axle ratio") , 
          tags$li("wt - weight") , 
          tags$li("qsec - 1/4 mile time") , 
          tags$li("vs - V/S") , 
          tags$li("am - transmission (0 = automatic, 1 = manual)") , 
          tags$li("gear - number of forward gears") , 
          tags$li("carb - number of carburetors") 
       )
      )
    )
  ),
  mainPanel(
    plotOutput('plot1')
  )
)
tagList(
  selectInput("xvar", "X variable", choices=names(dataset()), selected = input$xvar),
  selectInput("yvar", "Y variable", choices=names(dataset()), selected = input$yvar)
)
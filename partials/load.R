tagList(
  selectInput("dataset", "Dataset", c("pressure", "iris", "mtcars"),
    # Need to set selected to its own value so as this partial is
    # unloaded and loaded, the input keeps the same state instead
    # of resetting to its default value.
    selected = input$dataset
  )
)
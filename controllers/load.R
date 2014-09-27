dataset <- reactive({
  validate(need(!is.null(input$dataset), message = FALSE))

  get(input$dataset, "package:datasets")
})
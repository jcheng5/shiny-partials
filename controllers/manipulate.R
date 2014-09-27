manipulated <- reactive({
  # See http://shiny.rstudio.com/articles/validation.html
  validate(
    need(input$xvar, "No X variable selected"),
    need(input$yvar, "No Y variable selected")
  )
  validate(
    need(all(c(input$xvar, input$yvar) %in% names(dataset())),
      "Invalid column(s) selected"
    )
  )

  dataset()[, c(input$xvar, input$yvar)]
})

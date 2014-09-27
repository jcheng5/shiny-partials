function(input, output, session) {
  output$container <- renderUI({
    if (is.null(input$partial))
      return(NULL)
    # Make sure there's nothing malicious, like ../. The \\W pattern
    # (note the uppercase W) will match any non-letter characters.
    if (grepl("\\W", input$partial))
      return(NULL)

    # Source the partials/<pageTab>.R file and return the result.
    # It's important to pass local=TRUE so evaluation happens here,
    # not in the global environment.
    source(file.path("partials", paste0(input$partial, ".R")), local=TRUE)$value
  })

  for (file in list.files("controllers")) {
    source(file.path("controllers", file), local = TRUE)
  }
}

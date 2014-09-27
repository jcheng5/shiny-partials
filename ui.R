fluidPage(
  h2("Demonstration of partials"),
  # We're not putting anything in this tabsetPanel's tabs; we're just
  # rendering the tabs themselves, and using the selected value to tell
  # us which partial to render in the uiOutput("container") below
  tabsetPanel(id = "partial", type = "pill",
    tabPanel("Load", value="load"),
    tabPanel("Manipulate", value="manipulate"),
    tabPanel("Plot", value="plot")
  ),
  uiOutput("container")
)
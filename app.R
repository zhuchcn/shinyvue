library(shiny)

ui <- fluidPage(
    tags$script(src = "script.js"),
    tags$div(id="app")
)
# ui = htmlTemplate("index.html", document_ = TRUE)

server <- function(input, output, session) {
  
}

shinyApp(ui, server)
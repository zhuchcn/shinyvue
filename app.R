pkgs = c("shiny", "ggplot2", "dplyr")
for(pkg in pkgs){
    suppressPackageStartupMessages(
        library(
            pkg, character.only = TRUE, warn.conflicts = FALSE, 
            verbose = FALSE, quietly = TRUE
        )
    )
}
library(shiny); library(ggplot2); library(dplyr)

ui = htmlTemplate("index.html", document_ = TRUE)

server <- function(input, output, session) {
    output$xx = renderText({
        input$ss
        #"Hello"
    })

    output$plot = renderPlot({
        mtcars %>%
        ggplot(aes(mpg, disp)) +
        geom_point(aes(color = cyl)) +
        theme_bw()
    })
}

shinyApp(ui, server)
library(shiny)

shinyUI(pageWithSidebar(
    headerPanel("Cloud Formation in Colliding Flows"),
    
    sidebarPanel(
        radioButtons("id1", "Cloud view direction",
                           c("Face-on" = TRUE,
                             "Edge-on" = FALSE),
                           selected = FALSE),
        withMathJax(),
        sliderInput("year", 'Time passed in Myr', 
                    value = 12, min = 0, max = 24, step = 1),
        
        includeMarkdown("documentation.md")
        ),

    mainPanel(
        imageOutput("myImage")
        )
))
library(shiny)

shinyServer(
    function(input, output) {
        year <- reactive({input$year + 1})
        direction <- reactive({ifelse(input$id1, "yz", "xy")}) 
        
        output$myImage <- renderImage({
            outfile <- paste0("./figures/", direction(), "_", year(), ".jpg")
            list(src = outfile,
                 width = 400,
                 height = 400)
        }, deleteFile = FALSE)
    }
)
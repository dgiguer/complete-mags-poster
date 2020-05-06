# Define server logic required to draw a histogram
server <- function(input, output) {
    

output$circos <- renderImage({
    
    figure <- input$genome_figure
    
    filename <- normalizePath(file.path('./figs',
                              paste0(figure, '.png')))
 
    # Return a list containing the filename and alt text
    list(src = filename,
         alt = paste("Name: ", figure), width = "100%", height = "100%")

  }, deleteFile = FALSE)

output$coverage <- renderImage({
    
    figure2 <- input$coverage_figure
    
    filename2 <- normalizePath(file.path('./figs',
                              paste0(figure2, '.png')))
 
    # Return a list containing the filename and alt text
    list(src = filename2,
         alt = paste("Name: ", figure2), width = "100%", height = "100%")
        

  }, deleteFile = FALSE)
    
}


# Define UI for app that draws a histogram ----
ui <- fluidPage(

    fluidRow(
      column(3, absolutePanel(includeMarkdown("left.html")), style='padding-left:0px; padding-top:5px; padding-right:0px; padding-bottom:5px'),
      column(4, absolutePanel(includeMarkdown("middle.html")), style='padding-left:0px; padding-top:5px; padding-right:0px; padding-bottom:0px'), 
      column(3, absolutePanel(includeMarkdown("right.html")),style='padding-left:0px; padding-top:5px; padding-right:0px; padding-bottom:0px')
  ))

shinyApp(ui, server)
 
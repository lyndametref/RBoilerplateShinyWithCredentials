# Define UI for application show credentials available
ui <- fluidPage(
   titlePanel("Get credentials"),
   textOutput("credText")
)

# Define server logic required to draw a histogram
server <- function(input, output) {
   output$credText <- renderText(as.character(get_credentials()))
}

# Run the application
shinyApp(ui = ui, server = server)


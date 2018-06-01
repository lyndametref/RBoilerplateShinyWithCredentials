# Define UI for application show credentials available
ui <- fluidPage(
   titlePanel("Set credentials"),
   credentialsInput("credentials")
)

# Define server logic required to draw a histogram
server <- function(input, output) {
  callModule(setCredentials,"credentials")
}

# Run the application
shinyApp(ui = ui, server = server)


library(shiny)
library(bslib)

#UI Tabs ----
ui_libcal <- div(class = "main",
                 p("LibCal")
                 )

ui_emails <- p("E-mails")

ui_instreq <- p("Instruction Requests")

#UI Page ----
ui <- fluidPage(
  tags$head(
    tags$link(rel = "stylesheet", type = "text/css", href = "styles.css")
  ),
  titlePanel(title = "AutoStats 3.0", windowTitle = "AutoStats 3.0"),
  hr(),
  navset_pill_list( 
    nav_item("What type of stats do you want to generate?"),
    nav_panel("LibCal Appointments", ui_libcal), 
    nav_panel("E-mails", ui_emails), 
    nav_panel("Instruction Requests", ui_instreq), 
  ), 
  id = "tab" 
)



server <- function(input, output) {

}

shinyApp(ui = ui, server = server)
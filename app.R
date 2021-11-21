library(shiny)
library(tidyverse)
library(rsconnect)

#setwd("/Users/michelleanderson/Documents/Coursera Developing Data Products/Forward App/ForwardApp/")

# Define UI ----
ui <- fluidPage(
  titlePanel("Wisconsin Forward Exam District Comparison Tool"),
  sidebarLayout(
  #  position="right",
    sidebarPanel(
      radioButtons("Subject",
                   h4("Subject"),
                   choices=list("ELA", "Mathematics", "Science", "Social Studies")),
      selectInput("SchoolLevel",
                   h4("School Level"),
                   choices=list("All Students", "Elementary", "Middle School")),
      checkboxGroupInput("SchoolDistrict",
                         h4("School District"),
                         choices=list("[Statewide]", "Brown Deer", "Elmbrook", "Greendale", "Greenfield", "Kenosha", "Mequon-Thiensville", "Milwaukee", "Mukwonago", "Muskego-Norway", "New Berlin", "Racine Unified", "Shorewood", "Wauwatosa"),
                         selected="[Statewide]"),
      width=2
    ),
    mainPanel(plotOutput("prof_plot", height = "600px", width = "800px"))
  )
)

# Define server logic ----
server <- function(input, output) {
  fwd_ALL <- read_rds("forward_certified_app.rds")
  
  output$prof_plot <- renderPlot({
    fwd_Prof <- fwd_ALL %>% filter(Proficient=="Proficient", DISTRICT_NAME %in% input$SchoolDistrict, SchoolLevel==input$SchoolLevel, TEST_SUBJECT==input$Subject)
    fwd_NoTest <- fwd_ALL %>% filter(Proficient=="Not tested", DISTRICT_NAME %in% input$SchoolDistrict, SchoolLevel==input$SchoolLevel, TEST_SUBJECT==input$Subject)
    
    ggplot() +
      geom_line(data=fwd_Prof, aes(x=SCHOOL_YEAR, y=Proficient_Percent, group=DISTRICT_NAME, color=DISTRICT_NAME), size=1.5, alpha=.5) +
      geom_point(data=fwd_Prof, aes(x=SCHOOL_YEAR, y=Proficient_Percent, group=DISTRICT_NAME, color=DISTRICT_NAME), size=2.5, alpha=.75) +
      ggtitle(paste(input$Subject,  "Proficiency for Students Enrolled a Full Academic Year")) +
      xlab("") +
      ylab("Percent Proficient or Advanced") +
      ylim(0, 100) +
      theme(axis.text.x = element_text(angle = 90, size=16), axis.text.y = element_text(size=14), axis.title.y=element_text(size=16), text = element_text(size = 14), axis.title = element_text(size = 20)) +
      geom_text(data=fwd_Prof, aes(x=SCHOOL_YEAR, y=Proficient_Percent, label=round(Proficient_Percent,0)), size=5, color="gray25", vjust=-1.1, check_overlap=TRUE)
  })
}

# Run the app ----
shinyApp(ui = ui, server = server)
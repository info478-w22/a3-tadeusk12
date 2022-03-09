tab_1 <-
  fluidPage(
    h3("Introduction"),
    p("This application is created with the intention of seeing the impacts of vaccinations
      through the lens of a deterministic model and a stochastic model. Vaccination is
      defined by full vaccination through a 2 dose series. The models are based on the infection probability
      found in these journals:  https://onlinelibrary.wiley.com/doi/10.1002/jmv.27506
  https://deliverypdf.ssrn.com/delivery.php?ID=013084113099075076081099125108082007125015095067062090018069012096127075064083083110101106016015108127058124113027026107079028047047048048043107065093113123098035086054065108025123107112106109066067006125125106091071067010095118082097084075069021&EXT=pdf&INDEX=TRUE
  ")
  )
tab_2 <-
  fluidPage(
    sidebarLayout(
      sidebarPanel(selectInput("select", label = h3("Select box"), 
                              choices = list("Unvaccinated" = 1, "Fully Vaccinated" = 2), 
                              selected = 2)),
      mainPanel(
    plotOutput("plot1"),
    )
  ))

tab_3 <-
  fluidPage(
    sidebarLayout(
      sidebarPanel(selectInput("select1", label = h3("Select box"), 
                              choices = list("Unvaccinated" = 1, "Fully Vaccinated" = 2), 
                              selected = 1)),
      mainPanel(
plotOutput("plot2"))
  ))

tab_4 <-
  fluidPage(
    h1("Interpretations"),
    p("The models show that having a population fully vaccinated certainly does prevent infection.
      Having a fully vaccinated population greatly slows the amount of time populations are infected
      and will reduce the burden on the populations. This is seen in how the populations move from the
      susceptible to the infected population in more than 5x the time when they were fully vaccinated."),
    p("Limitations include how they only cover two does vaccines, as well as only the first variant
      of COVID-19. The models also fail to take into account other measures, such as social distancing,
      masking, or the participation in getting booster shots.")
  )

ui <- fluidPage(
  navbarPage("Assignment 3",
             tabPanel("Introduction", tab_1),
             tabPanel("Deterministic Model", tab_2),
             tabPanel("Stochastic Model", tab_3),
             tabPanel("Interpretation", tab_4)
  ))

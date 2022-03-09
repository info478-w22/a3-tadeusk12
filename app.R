library("shiny")
library("shinyWidgets")
library("ggplot2")
library("plotly")
library("leaflet")
library("dplyr")
library("RColorBrewer")
library("EpiModel")

source("my_server.R")
source("my_ui.R")

shinyApp(ui = ui, server = server)
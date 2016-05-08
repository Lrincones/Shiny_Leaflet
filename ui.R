#
# This is the user-interface definition of my Shiny web application.
# It locates in a Map the Coordinates that a user indicates 
# the Longitude and Latitude are indicates usinge sliders, there
# is a text field to input a short text in the marker for location.
# The original location corresponds to the birthplace of the R Language 
# in Auckland New Zeland longitude 174.768, latitude -36.852
# There is a submit button to process the coordinates information once
# the user has update the coordinates as he wished.
#load libraries
library(shiny)
library(geosphere)
library(leaflet)
#Default values
default_lng <- 174.768
default_lat <- -36.852
# Sidebar with fields to collect the data 
shinyUI(fluidPage(
        # Application Title
        titlePanel("Map the location"),
        # Sidebar with two numeric fields for longitude and latitude
        sidebarLayout(
                sidebarPanel(
                        sliderInput("longitude", "Longitude:", 
                                    min = -180, max = 180, value = default_lng, step= 0.001),
                        sliderInput("latitude", "Latitude:", value=default_lat,
                                    min=-90, max=90),
                        textInput("location","Please indicate the Location's Text to display", 
                                  value = "Birthplace 'R' language"), 
                        submitButton("click to build the map"),
                        p("")
                ),
                mainPanel("Location Map",
                          leafletOutput("distPlot1")
                )
        )
))

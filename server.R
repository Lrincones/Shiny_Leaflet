
# This is the server logic for my Shiny web application.
# It locates in a Map the Coordinates that a user indicated 
# in the input fields "longitude" and "latitude" as well as the 
# text that will be display in the marker for location.
# The original location corresponds to the birthplace of the R Language 
# in Auckland New Zeland longitude 174.768, latitude -36.852
# There is a submit button to process the coordinates information once
# the user has update the coordinates as he wished.
#
# load libraries
library(shiny)
library(geosphere)
library(leaflet)
# Define server logic required to captures the longitude and latitude
shinyServer(function(input, output) {
                output$distPlot1 <- renderLeaflet({
                m <- leaflet() 
                m <- addTiles(m)
                m <- setView(m, lng = input$longitude, lat = input$latitude, zoom = 12)
                m <- addMarkers(m, lng = input$longitude, lat = input$latitude, popup = input$location)
                m <- addCircleMarkers(m,lng = input$longitude, lat = input$latitude, radius = 20)
                m  
        })
})
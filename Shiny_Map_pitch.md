Shiny Map pitch
========================================================
author: Luis Rincones
date: May-5-2016
autosize: true
***
![alt text](Shiny.png)
![alt text](Leaflet.png)

========================================================
## Presenting Maps in Shiny using Leaflet  
.         
### Shiny and Leaflet on Apps using Maps
.   
###  Example 
.     
####     Map using as default location the place where the R language was created
####     User may optionally change to other location
####      Widgets to update longitude and latitude
####      Text Field for the short text on the location pop up  

User Interface
========================================================


![](User_Interface.png)

Leaflet code for Shiny - examples  
========================================================
.  
.   
.   
.  To receive the output from the shiny server code
.   using "leafletOutput()"  
  
![alt text](UI.png)
.   
***
.  
.   
.   
The main command to receive the output is  "renderLeaflet" 
it will be passed to the ui interface for display.
.   
.  
![alt text](server.png)
***
Available Plugins from Leaflet - Categories
========================================================

![alt text](plugins.png)

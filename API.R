library(httr)
library(jsonlite)
library(magrittr)
#internal function to parse
parsing<-function(req)
{x<-content(req,"text")
if (identical(x,"")) warning ("HI AMIGO, THIS IS EMPTY! BE CAREFUL!")
fromJSON(x)}


var<-"Thorapadi"  #var input!


latlong<-function(place)
{
  z<-list(address=var,key=) #create the list of parameters I will send to google.
  
  var<-GET("https://maps.googleapis.com/maps/api/geocode/json",query=z) #this is the actual API connection.
  
  stop_for_status(var)
  
  
  parsed_var<-parsing(var) #I just parse what I receive.
  x<-parsed_var$results #now all my results are in x!
  x$formatted_address
  list("latitude and longitude"=x$geometry$location, "Complete name" = x$formatted_address)
}

latlong(var)
#example we did together
#var1<-"rydsvagen 246"
#var2<-"linkoping university"
#z<-list(origin=var1,destination=var2,key="AIzaSyAGdetT_wO2o2Q6LfHFVmEw7yxFnvVpCbo")
#var<-GET("https://maps.googleapis.com/maps/api/directions/json",query=z) #this is the actual API connection.
#x<-parsing(var)
#unlist(x)
#x$routes$legs
#z<-x$routes$legs[[1]]
#z$distance


z<-list(input="museums in linkoping",key=) #create the list of parameters I will send to google.
var<-GET("https://maps.googleapis.com/maps/api/place/textsearch/json?",query=z) #this is the actual API connection.
x<-parsing(var)

x$results[,c("name","rating")]

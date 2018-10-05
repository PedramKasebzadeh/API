library(API)
library(testthat)
context("latlong")




test_that("output is correct", {
  place <- "Tehran"
 w <<- "AIzaSyAGdetT_wO2o2Q6LfHFVmEw7yxFnvVpCbo"
 t <- latlong(place,w)
latlong()
 
 expect_equal(t$`latitude and longitude`$lat , 35.6892)

  })
library(testthat)
context("latlong")
library(API)

test_that("str_length is number of characters", {
  expect_error(is.numeric(place))
})
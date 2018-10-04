context("latlong")
library(API)
library(testthat)
context("latlong")


test_that("latlong rejects errounous input", {
  expect_equal(latlong_test(1),2)})


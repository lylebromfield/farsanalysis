library(testthat)
library(farsanalysis)

#Test make_filename
test_that("Testing the make_filename function", {
  expect_equal(make_filename(2015), "accident_2015.csv.bz2")
  })

#Test fars_read
test_that("Check if the files are read into R in the expect format", {
  fars2013 <- fars_read("accident_2013.csv.bz2")
  expect_that(fars2013, is_a("data.frame"))
})

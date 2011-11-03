library(testthat)

test_that("labels",{
  cats <- data.frame( label = c("male", "female")
                    , code = c("M","F")
                    )
  gender <- categorical(c("female", "male", "male"), cats=cats)
  
  expect_equal(labels(gender), c("male", "female"))
  expect_equal(labels(gender, "label"), c("male", "female"))
  expect_equal(labels(gender, "code"), c("M", "F"))
  
})
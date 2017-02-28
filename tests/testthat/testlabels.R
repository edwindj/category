library(testthat)

test_that("labels",{
  cats <- data.frame( label = c("male", "female")
                    , code = c("M","F")
                    )
  gender <- categorical(c("female", "male", "male"), cats=cats)
  expect_equivalent(labels(gender), c("female", "male", "male"))
  expect_equivalent(labels(gender, "label"), as.factor(c("female", "male", "male")))
  expect_equivalent(labels(gender, "code"), as.factor(c("F", "M", "M")))
  
})
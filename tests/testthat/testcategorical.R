library(testthat)

test_that("categorical works",{
  gender <- categorical(c("female", "male", "male"))
  
  expect_true(is.categorical(gender))
  expect_equal(levels(gender), c("female", "male"))
})

test_that("categorical works with categories works",{
  cats <- data.frame( label = c( "male", "female")
                    , code  = c("M","F")
                    )
  gender <- categorical(c("female", "male", "male"), cats=cats)
  
  expect_true(is.categorical(gender))
  expect_equal(levels(gender), c("male", "female"))
})

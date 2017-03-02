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
  expect_equal(ncategories(gender), 2)
  expect_true(is.categorical(gender))
})

describe("as.categorical", {
  it("works",{
    gender <- factor(c("male", "female"))
    gender <- as.categorical(gender)
    expect_true(is.categorical(gender))
    cats <- categories(gender)
    expect_equivalent(cats$label, c("female", "male"))
  })
})

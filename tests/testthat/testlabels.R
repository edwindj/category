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

describe("relabel",{
  it("relabels",{
    cats <- data.frame( label = c("male", "female")
                        , code = c("M","F")
    )
    gender <- categorical(c("female", "male", "male"), cats=cats)
    gender <- relabel(gender, "code")
    expect_equivalent(as.character(gender), c("F","M","M"))
    gender <- relabel(gender, "label")
    expect_equivalent(as.character(gender), c("female","male","male"))
  })
})


describe("add_label",{
  it("adds labels",{
    cats <- data.frame( label = c("male", "female")
                        , code = c("M","F")
    )
    gender <- categorical(c("female", "male", "male"), cats=cats)
    gender <- add_labels(gender, nl=c("man", "vrouw"))
    expect_equal(c("man", "vrouw"), categories(gender)$nl)
  })
})
library(testthat)
library(randomcolour)

test_check("randomcolour")

test_that("random colours generated", {
  expect_equal({
    set.seed(1)
    randomcolour()
  },
  "#43F860",
  "non-padding example")

  expect_equal({
    set.seed(97)
    randomcolour()
  },
  "#0A87AF",
  "padding example")

  expect_false(
    {
      set.seed(1)
      randomcolour() == randomcolour()
    },
    "non-repetition")
})

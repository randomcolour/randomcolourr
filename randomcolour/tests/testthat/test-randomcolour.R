# R 3.6.0 introduced changes to discrete uniform sampling
# used in sampling. To ensure consistency in testing across
# R versions, fix RNG version to that of 3.5.0 for tests:
suppressWarnings(RNGversion("3.4.0"))

test_that("random colours generated", {
  expect_equal({
    set.seed(1)
    randomcolour()
  },
  "#ShouldFail",
  label = "non-padding example")

  expect_equal({
    set.seed(97) # known to give a hex code needing padding
    randomcolour()
  },
  "#0A87AF",
  label = "padding example")

  expect_false(
    {
      set.seed(1)
      randomcolour() == randomcolour()
    },
    label = "non-repetition")

  expect_equal(
    {
      set.seed(42)
      randomcolour()
    },
    {
      set.seed(42)
      randomcolor()
    },
    label = "randomcolour and randomcolor identical"

  )
})



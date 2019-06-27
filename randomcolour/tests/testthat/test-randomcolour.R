# Note below that RNG method specified away from default and
# non-Mersenne Twister for reproducibility aross R versions,
# due to Mersenne-Twister changing to use an updated version

test_that("random colours generated", {
  expect_equal({
    set.seed(1, kind = "Super-Duper")
    randomcolour()
  },
  "#147A9D",
  label = "non-padding example")

  expect_equal({
    set.seed(98, kind = "Super-Duper") # known to give a hex code needing padding
    randomcolour()
  },
  "#0CCCC8",
  label = "padding example")

  expect_false(
    {
      set.seed(1)
      randomcolour() == randomcolour()
    },
    label = "non-repetition")
})

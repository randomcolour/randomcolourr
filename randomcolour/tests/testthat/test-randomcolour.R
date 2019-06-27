
test_that("random colours generated", {
  expect_equal({
    set.seed(1, kind = "Mersenne-Twister", normal.kind = "Inversion")
    randomcolour()
  },
  "#43F860",
  label = "non-padding example")

  expect_equal({
    set.seed(97, kind = "Mersenne-Twister", normal.kind = "Inversion")
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
})

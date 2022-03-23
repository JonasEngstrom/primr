test_that("decode_value() throws an error if value to decode cannot be factorized to numbers in the encoding key", {
  expect_error(decode_value(248, c(Fish = 2, Mammal = 3, Bird = 5)), "Argument value_to_encode cannot be factorized using values in argument prime_key. Please ensure that correct key is used.")
})

test_that("decode_value() throws an error if input is not numeric", {
  expect_error(decode_value("cat", c(Fish = 2, Mammal = 3, Bird = 5)), "Argument value_to_decode needs to be a numeric.")
})

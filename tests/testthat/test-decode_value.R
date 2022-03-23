test_that("decode_value() returns correct values", {
  expect_equal(decode_value(10, c(Fish = 2, Mammal = 3, Bird = 5)), c("Fish", "Bird"))
})

test_that("decode_value() throws an error if value to decode cannot be factorized to numbers in the encoding key", {
  expect_error(decode_value(248, c(Fish = 2, Mammal = 3, Bird = 5)), "Argument value_to_encode cannot be factorized using values in argument prime_key. Please ensure that correct key is used.")
})

test_that("decode_value() throws an error if input is not numeric", {
  expect_error(decode_value("cat", c(Fish = 2, Mammal = 3, Bird = 5)), "Argument value_to_decode needs to be a numeric.")
})

test_that("decode_value() returns a warning and an NA value if given a 1 as an values_to_decode argument", {
  expect_warning(expect_equal(decode_value(1, c(Fish = 2, Mammal = 3, Bird = 5)), NA), "Argument values_to_decode equal to 1, i.e. value is empty. NA returned.")
})

test_that("encode_value() encodes correctly", {
  expect_equal(encode_value(c("Mammal", "Bird"), c(Fish = 2, Mammal = 3, Bird = 5)), 15)
})

test_that("encode_value() returns a double") {
  expect_type(encode_value(c("Mammal", "Bird"), c(Fish = 2, Mammal = 3, Bird = 5)), "double")
}

test_that("encode_value() throws an error when values are not in key") {
  expect_error(encode_value(c("Mammal", "Bird", "Arthropod"), c(Fish = 2, Mammal = 3, Bird = 5)), "Argument values_to_encode contains values not present in argument prime_key. Generate a new key using make_encoding_key() or add the value to the exisiting key using add_values_to_key().")
}

test_that("encode_value() throws an error if passed an incorrectly formatted encoding key", {
  expect_error(encode_value(c("Mammal", "Bird"), 5), "Argument prime_key incorrectly formated. Please use make_encoding_key() to generate a correctly formatted key.")
})

test_that("append_values() throws an error when values_to_append are not in prime_key", {
  expect_error(append_values(6, "Nematode", c(Fish = 2, Mammal = 3, Bird = 5, Arthropod = 7)), "Argument values_to_append contains values not present in argument prime_key. Generate a new key using make_encoding_key() or add the values to the exisiting key using add_values_to_key().")
})

test_that("append_values() returns correct values", {
  expect_equal(append_values(6, "Bird", c(Fish = 2, Mammal = 3, Bird = 5, Arthropod = 7)), 6 * 5)
  expect_equal(append_values(6, c("Arthropod", "Bird"), c(Fish = 2, Mammal = 3, Bird = 5, Arthropod = 7)), 6 * 5 * 7)
})

test_that("append_values() returns a warning if values_to_append are already in encoded_value", {
  expect_warning(expect_equal(append_values(6, "Fish", c(Fish = 2, Mammal = 3, Bird = 5, Arthropod = 7)), 6 * 5), "Argument encoded_value already contains argument values_to_append. No change made.")
})

test_that("append_values() returns encoded_value unchanged if values_to_append are already in encoded_value", {
  expect_equal(expect_equal(append_values(6, "Fish", c(Fish = 2, Mammal = 3, Bird = 5, Arthropod = 7))), 6)
})

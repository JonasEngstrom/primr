test_that("remove_values() throws an error when values_to_remove are not in prime_key", {
  expect_error(remove_values(6, "Nematode", c(Fish = 2, Mammal = 3, Bird = 5, Arthropod = 7)), "Argument values_to_remove contains values not present in argument prime_key.Please ensure that the right key has been loaded.")
})

test_that("remove_values() returns correct values", {
  expect_equal(remove_values(6, "Mammal", c(Fish = 2, Mammal = 3, Bird = 5, Arthropod = 7)), 6 / 3)
  expect_equal(remove_values(30, c("Fish", "Mammal"), c(Fish = 2, Mammal = 3, Bird = 5, Arthropod = 7)), 30 / 2 / 3)
})

test_that("remove_values() returns a warning if values_to_remove are not in encoded_values", {
  expect_warning(remove_values(6, "Fungus", c(Fish = 2, Mammal = 3, Bird = 5, Arthropod = 7)), "Argument values_to_remove not present in argument encoded_value. No change made.")
})

test_that("remove_values() returns encoded_value unchanged if values_to remove are not in encoded value", {
  expectEqual(remove_values(6, "Fungus", c(Fish = 2, Mammal = 3, Bird = 5, Arthropod = 7)), 6)
})

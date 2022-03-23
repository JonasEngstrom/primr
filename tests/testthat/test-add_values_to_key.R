test_that("add_values_to_key() returns a warning if no new values are found", {
  expect_warning(add_values_to_key("Mammal", c(Fish = 2, Mammal = 3, Bird = 5)), "All values in argument values_to_add already exist in argument prime_key. No new values were added.")
})

test_that("add_values_to_key() returns an unchanged key if no new values were found", {
  expect_setequal(add_values_to_key("Mammal", c(Fish = 2, Mammal = 3, Bird = 5)), c(Fish = 2, Mammal = 3, Bird = 5))
})

test_that("add_values_to_key() returns new primes that are higher than the old ones", {
  expect_gt(max(add_values_to_key("Arthropod", c(Fish = 2, Mammal = 3, Bird = 5))), 5)
})

test_that("add_values_to_key() returns a vector of a length corresponding to all unique values in both keys combined", {
  expect_length(add_values_to_key(c("Mammal", "Mammal", "Arthropod"), c(Fish = 2, Mammal = 3, Bird = 5)), 4)
  expect_length(add_values_to_key(c("Mammal", "Arthropod"), c(Fish = 2, Mammal = 3, Bird = 5)), 4)
  expect_length(add_values_to_key("Arthropod", c(Fish = 2, Mammal = 3, Bird = 5)), 4)
})

test_that("generate_primes() returns a vector of the correct size", {
  expect_vector(generate_primes(5), size = 5)
  expect_vector(generate_primes(5.4), size = 5)
  expect_vector(generate_primes(5.6), size = 5)
})

test_that("generate_primes() returns prime numbers", {
  expect_equal(generate_primes(5), c(2,3,5,7,11))
  expect_equal(generate_primes(5.4), c(2,3,5,7,11))
  expect_equal(generate_primes(5.6), c(2,3,5,7,11))
})

test_that("generate_primes() does not throw an error when passed a one", {
  expect_equal(generate_primes(1), 2)
})

test_that("generate_primes() throws an error when passed a non-positive value", {
  expect_error(generate_primes(0), "Argument number_of_primes must be a positive number.")
  expect_error(generate_primes(-1), "Argument number_of_primes must be a positive number.")
  expect_error(generate_primes(-10.4), "Argument number_of_primes must be a positive number.")
  expect_error(generate_primes(-20.6), "Argument number_of_primes must be a positive number.")
})

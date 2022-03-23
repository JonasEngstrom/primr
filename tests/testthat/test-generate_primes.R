test_that("generate_primes() returns a vector of the correct size", {
  expect_vector(generate_primes(5), size = 5)
})

test_that("generate_primes() returns prime numbers", {
  expect_equal(generate_primes(5), c(2,3,5,7,11))
})

test_that("generate_primes() throws an error, when passed a value that is not a positive integer", {
  expect_error(generate_primes(-1), "Argument number_of_primes needs to be a positive integer.")
  expect_error(generate_primes(0), "Argument number_of_primes needs to be a positive integer.")
  expect_error(generate_primes(0.8), "Argument number_of_primes needs to be a positive integer.")
})

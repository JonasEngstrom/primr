test_that("generate_primes() returns a vector of the correct size", {
  expect_vector(generate_primes(5), size = 5)
})

test_that("generate_primes() returns prime numbers", {
  expect_equal(generate_primes(5), c(2,3,5,7,11))
})

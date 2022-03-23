test_that("check_if_factorization_is_possible() throws the intended error", {
  expect_error(check_if_factorization_is_possible(2800, c(Fish = 2, Mammal = 3, Bird = 5), "Error!"), "Error!")
})

test_that("check_if_factorization_is_possible() does not throw an error if value can be factorized", {
  expect_silent(check_if_factorization_is_possible(6, c(Fish = 2, Mammal = 3, Bird = 5), "Error!"))
})

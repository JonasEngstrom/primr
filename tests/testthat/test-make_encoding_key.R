test_that("make_encoding_key() returns a vector of the correct length", {
  expect_vector(make_encoding_key(c("Mammal", "Bird", "Mammal", "Fish")), size = 3)
})

test_that("key returned by make_encoding_key() contains all the input values", {
  expect_setequal(names(make_encoding_key(c("Mammal", "Bird", "Mammal", "Fish"))), c("Bird", "Fish", "Mammal"))
})

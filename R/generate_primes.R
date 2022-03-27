#' Generate Primes
#'
#' Generates a list of prime numbers, starting at 2. The prime numbers are used
#' by `make_encoding_key()` to generate prime number keys for encoding.
#'
#' @param number_of_primes A positive integer. The number of rime numbers
#'   desired.
#'
#' @usage generate_primes(number_of_primes)
#'
#' @return A double vector of prime numbers starting at 2.
#' @export
#' @md
#'
#' @seealso [primr::make_encoding_key()]
#'
#' @examples
#' # Return a vector containing 2, 3, and 5.
#' vector_of_primes <- generate_primes(3)
generate_primes <- function(number_of_primes) {

  # Check that argument number_of_prime is a positive integer,
  # even if it might be stored in a double.
  if (!(number_of_primes %% 1 == 0 & number_of_primes >= 1)) {
    stop("Argument number_of_primes needs to be a positive integer.")
  }

  vector_of_primes <- 2
  counter <- 3

  # Loop through and store numbers that are not divisible by primes, i.e. other primes.
  while (length(vector_of_primes) < number_of_primes) {
    if (sum(counter %% vector_of_primes < 1) == 0) {
      vector_of_primes <- c(vector_of_primes, counter)
    }
    counter <- counter + 2
  }

  return(vector_of_primes)
}

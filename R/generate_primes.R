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
  return(vector_of_primes)
}

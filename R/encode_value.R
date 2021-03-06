#' Encode Value
#'
#' Takes a vector and returns an integer that is a product of the prime keys
#' corresponding to the values in the vector. The second argument takes an
#' encoding key as generated by `make_encoding_key()`. Values can be decoded
#' using `decode_value()`.
#'
#' @param values_to_encode A vector of values to encode.
#' @param prime_key An encoding key, as generated by `make_encoding_key()`.
#'
#' @usage encode_value(values_to_encode, prime_key)
#'
#' @return A double, containing an integer value.
#' @export
#' @seealso [primr::make_encoding_key()]
#' @seealso [primr::decode_value()]
#' @md
#'
#' @examples
#' # Generate a product equal to 15.
#' encoded_value <- encode_value(c('Mammal', 'Bird'), c(Fish = 2, Mammal = 3, Bird = 5))
encode_value <- function(values_to_encode, prime_key) {
  # Check whether prime_key is named vector.
  if (is.null(names(prime_key))) {
    stop("Argument prime_key incorrectly formated. Please use function make_encoding_key to generate a correctly formatted key.")
  }

  # Check whether values_to_encode contains value not in prime_key.
  if (!(sum(names(prime_key) %in% values_to_encode) == length(values_to_encode))) {
    stop("Argument values_to_encode contains values not present in argument prime_key. Generate a new key using function make_encoding_key or add the value to the exisiting key using function add_values_to_key.")
  }

  # Find and multiply primes in key corresponding to values to encode.
  encoded_value <- prod(prime_key[names(prime_key) %in% values_to_encode])

  return(encoded_value)
}

#' Make Encoding Key
#'
#' Takes a vector of values and pairs them with prime numbers. The pairs can
#' then be used for encoding by `encode_value()`, decoding by `decode_value()`.
#' If there are several identical values in the input vector, only one prime
#' number per unique value is returned.
#'
#' @param values_to_encode A vector containing all unique values to encode.
#'
#' @usage make_encoding_key(values_to_encode)
#'
#' @return A vector of prime numbers with names corresponding to the values to
#'   be encoded.
#' @export
#' @md
#'
#' @seealso [primr::encode_value()]
#' @seealso [primr::decode_value()]
#'
#' @examples
#' # Return a key of three prime numbers for three categories.
#' prime_key <- make_encoding_key(c("Mammal", "Bird", "Fish"))
make_encoding_key <- function(values_to_encode) {
  return(prime_key)
}

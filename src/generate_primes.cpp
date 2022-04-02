#include "generate_primes.h"
#include <Rcpp.h>
#include <vector>
using namespace Rcpp;

//' Generate Primes
//'
//' Generates a list of prime numbers, starting at 2. The prime numbers are used
//' by `make_encoding_key()` to generate prime number keys for encoding.
//'
//' @param number_of_primes A positive integer. The number of rime numbers
//'   desired.
//'
//' @usage generate_primes(number_of_primes)
//'
//' @return A double vector of prime numbers starting at 2.
//' @export
//' @md
//'
//' @seealso [primr::make_encoding_key()]
//'
//' @examples
//' # Return a vector containing 2, 3, and 5.
//' vector_of_primes <- generate_primes(3)
// [[Rcpp::export]]
std::vector<int> generate_primes(const int number_of_primes) {
  std::vector<int> vector_of_primes(number_of_primes - 1);
  vector_of_primes[0] = 3;
  int primes_found = 0;
  int number_to_test = 5;
  bool is_prime = true;

  while (primes_found < number_of_primes - 1) {
    for (int i { 0 }; i <= primes_found; i++) {
      if (number_to_test % vector_of_primes[i] == 0) {
        is_prime = false;
        break;
      }
    }

    if (is_prime) {
      vector_of_primes[primes_found + 1] = number_to_test;
      primes_found++;
    }

    is_prime = true;
    number_to_test += 2;
  }

  vector_of_primes.insert(vector_of_primes.begin(), 2);

  return vector_of_primes;
}

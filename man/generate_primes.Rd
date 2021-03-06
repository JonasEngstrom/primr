% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{generate_primes}
\alias{generate_primes}
\title{Generate Primes}
\usage{
generate_primes(number_of_primes)
}
\arguments{
\item{number_of_primes}{A positive integer. The number of rime numbers
desired.}
}
\value{
A double vector of prime numbers starting at 2.
}
\description{
Generates a list of prime numbers, starting at 2. The prime numbers are used
by \code{make_encoding_key()} to generate prime number keys for encoding.
}
\examples{
# Return a vector containing 2, 3, and 5.
vector_of_primes <- generate_primes(3)
}
\seealso{
\code{\link[=make_encoding_key]{make_encoding_key()}}
}

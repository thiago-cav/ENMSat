#' Sum vectors > 0.5
#' This function calculate the sum of a vector with values larger than 0.5
#'
#'
#' @param x a numerical vector of habitat suitability values
#' @param ... arguments to be passed to internal functions
#'
#' @return numeric sum
#' @export
#'
#' @examples
#' suit_vector <- c(0.3, 0.7, 0.1, 0, 0.1)
#' sum_vectors(suit_vector)


sum_vectors <- function(x, ...){
  r <- sum(x>0.5, ...)
  return(r)
}

document()

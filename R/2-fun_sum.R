#function to sum vectors
sum_vectors <- function(x, ...){
  r <- sum(x>0.5, ...)
  return(r)
}

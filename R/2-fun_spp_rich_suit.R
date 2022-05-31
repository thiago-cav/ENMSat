#Function to sum vectors when value is larger than 0.5
spp_rich_suit <- function(x, ...){
  r <- sum(x>0.5, ...)
  return(r)
}

#test
mata <- c(0.3, 0.7, 0.9, 0.2, 0, 0.1)
spp_rich(mata)

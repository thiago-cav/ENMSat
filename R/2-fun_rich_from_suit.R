#' Species richness from suitability rasters
#' This function calculate species richness based on an arbitrary threshold of
#' 0.5 of suitability rasters
#'
#'
#'
#' @param x raster of Habitat suitability
#' @param na.rm argument
#'
#' @return species richness raster
#' @export
#'
#' @importFrom terra app
#'

spp_rich_suit <- function(x, na.rm = FALSE){
  if(inherits(x, "SpatRaster")){
    ## raster
    r <- app(x, sum_vectors, na.rm=na.rm)
  } else {
    stop("Argument 'x' must be an object of class 'SpatRaster'")
  }
  return(r)
}

#' Species richness from suitability rasters
#' This function calculate species richness based on an arbitrary threshold of
#' 0.5 of suitability rasters
#'
#' @inheritParams sum_vectors
#'
#' @param x raster of Habitat suitability
#' @param na.rm argument
#'
#' @return species richnees maps
#' @export
#'
#' @examples
#' spp_rich_suit()

spp_rich_suit <- function(x, na.rm = FALSE){
  if(inherits(x, "SpatRaster")){
    ## raster
    r <- app(x, sum_vectors, na.rm=na.rm)
  } else {
    stop("Argument 'x' must be an object of class 'SpatRaster'")
  }
  return(r)
}

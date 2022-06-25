#' A function to extract values of remote sensing predictors at
#' different spatial resolutions
#' The resolution are resampled from the oringal raster at 1km to res
#' of 5k and 10km
#'
#' @param r rasterfile of a remote sensing variable or any predictor
#' @param p a SpatialPointsDataFrame object
#' @param na.rm argument
#'
#' @return a data.frame
#' @export
#'
#' @importFrom sp coordinates
#'
extract_scales <- function(r, p, na.rm = TRUE){
  #extract the variables at the original scale
  v1 <- terra::extract(r, p, method="bilinear")
  r2 <- terra::aggregate(r, fact=5, fun=mean)
  v2 <- terra::extract(r2, p, method="bilinear")
  r3 <- terra::aggregate(r2, fact=2, fun=mean)
  v3 <- terra::extract(r3, p, method="bilinear")
  df <- data.frame(cbind(coordinates(p), v1, v2, v3))
  return(df)
}

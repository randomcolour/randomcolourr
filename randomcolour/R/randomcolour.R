#' Generate a random colour
#'
#' @return A hexidecimal string of form #XXXXXX representing a random colour across the 24 bit colour range.
#'
#' Mimics the randomcolour.com approach for selecting a random integer between 0 and 1677715 and expressing
#' as a hexidecimal string of appropriate format.
#'
#' @describeIn randomcolour main function
#' @examples
#' randomcolour()
#'
#' @export
randomcolour <- function(size=1)
{
  return(paste0("#",format(as.hexmode(sample(2^24, size)-1),width=6,upper.case=TRUE)))
}


#' @describeIn randomcolour alternative spelling, calls randomcolour()
#' @usage randomcolor()
#' @examples
#' randomcolor()
#'
#' @export
randomcolor <- randomcolour

randomcolourise <- function(dt)
{
  # Currently only works with dataframes
  dt <- as.data.frame(dt)
  return(dplyr::transmute_all(dt,~randomcolor(nrow(dt))))
}

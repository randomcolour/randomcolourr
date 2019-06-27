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
randomcolour <- function()
{
  hex_value <- as.character.hexmode(sample(2^24, 1) - 1, 1)

  hex_colour <- paste0(
    "#",
    paste0(rep("0", times = 6 - nchar(hex_value)), collapse = ""),
    toupper(hex_value))

  return(hex_colour)
}


#' @section Aliases
#' randomcolour is the standard spelling throughout the package, though
#' is also available to call through randomcolor
#'
#' @describeIn randomcolour alternative spelling, calls randomcolour()
#' @usage randomcolor()
#' @examples
#' randomcolor()
#'
#' @export
randomcolor <- function(...) {
  randomcolour(...)
}

# Will use crayon to output random colours
# and add random coloured warning, stop, message examples

# TODO: add to dependencies appropriately:
library(crayon)

randomcolour_message <- function(msg) {
  colour <- randomcolour()

  if(missing(msg)) msg <- colour
  coloured_message <- make_style(colour)

  cat(coloured_message(msg))
}

message_rc <- randomcolour_message

randomcolour_crayon <- function() {
  randomcolour_message()
}


randomcolour_better <- function()
{
  hex_value <- as.character.hexmode(sample(2^24, 1) - 1, 1)

  hex_colour <- paste0(
    "#",
    paste0(rep("0", times = 6 - nchar(hex_value)), collapse = ""),
    toupper(hex_value))

  if (requireNamespace("crayon", quietly=TRUE)) {
    cat(make_style(hex_colour)(hex_colour))
    return(invisible(hex_colour))
  } else {
    return(hex_colour)
  }
}

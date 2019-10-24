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

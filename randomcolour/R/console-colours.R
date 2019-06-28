# Will use crayon to output random colours
# and add random coloured warning, stop, message examples

# TODO: add to dependencies appropriately:
library(crayon)

randomcolour_message <- function(...) {
  colour <- randomcolour()
  coloured_message <- make_style(colour)

  cat(coloured_message(...))
}

message_rc <- randomcolour_message

# randomcolour_message("hello randomcolour world")




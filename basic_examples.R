library(magrittr)

# Generates a random 24 bit colour hex string
# mimicks randomcolour.com approach of random integer between 0 and 16777215,
# returns as hex string
randomcolour <- function() 
{
  hex_value <- as.character.hexmode(sample(2^24, 1) - 1, 1)
  
  hex_colour <- paste0("#", paste0(rep("0", times = 6 - nchar(hex_value)), collapse = ""), hex_value)
}
# test cases need to demonstrate padding works e.g. set seed 97 and first call would do it
# as gives a87af for first sample so needs padding

colour_jpg <- function(colour, filename, width = 200, height = 200, ...) {
  jpeg(filename, bg = colour, width = width, height = height, ...)
  plot.new()
  dev.off()
  
}

colour_plot <- function(colour, ...) {
  windows(bg = colour, ...)
  plot.new()
}

randomcolour_plot <- function(...) 
{
  colour <- randomcolour()
  colour_plot(colour, ...)
}

randomcolour_jpg <- function(filename, width = 200, height = 200, ...) 
{
  randomcolour() %>% 
    colour_jpg(filename, width = width, height = height, ...)
}


randomcolour_plot()
randomcolour_plot(width = 8, height = 5)

randomcolour_jpg("C:/temp/foo.jpg")

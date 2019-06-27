# Generates a random 24 bit colour hex string
# mimicks randomcolour.com approach of random integer between 0 and 16777215,
# returns as hex string
randomcolour <- function()
{
  hex_value <- as.character.hexmode(sample(2^24, 1) - 1, 1)

  hex_colour <- paste0(
    "#",
    paste0(rep("0", times = 6 - nchar(hex_value)), collapse = ""),
    toupper(hex_value))

  return(hex_colour)
}

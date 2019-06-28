library(plumber)
plumb("R/randomcolour.R")$run(port=8000)

#R instance is busy while running plumber so may need to run this line in seperate instance
httr::GET("http://localhost:8000/randomcolour")

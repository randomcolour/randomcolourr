#' randomcolour REST API endpoint

#* @get /randomcolor
#* @get /randomcolour
function(){
  list(color=randomcolor::randomcolor())
}

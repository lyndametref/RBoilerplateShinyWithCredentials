#' Launch the API
#'
#' @param api_port the port on which the api is listening
#' @return nothing
#' @export
#' @importFrom plumber plumb

launchAPI <- function(api_port=8080,host='0.0.0.0') {
  api_listener <- plumb(system.file(file = "api.R",package = "RBoilerplateAPI"))
  api_listener$run(port=api_port,host=host)
}

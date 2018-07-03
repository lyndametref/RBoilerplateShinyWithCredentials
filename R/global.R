#' Launch the application
#'
#' @param app_port the port on which the app is available
#' @return nothing
#' @export
#' @importFrom shiny runApp

launchApp <- function(app_port=8888, host = getOption("shiny.host", "127.0.0.1")) {
  runApp(port = app_port,
         appDir = system.file(package = "RBoilerplate"),
         host = host)
}

#' Launch the API
#'
#' @param api_port the port on which the api is listening
#' @return nothing
#' @export
#' @importFrom plumber plumb

launchAPI <- function(api_port=8080,host='0.0.0.0') {
  api_listener <- plumb(system.file(file = "api.R",package = "RBoilerplate"))
  api_listener$run(port=api_port,host=host)
}

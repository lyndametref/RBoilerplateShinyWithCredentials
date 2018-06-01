#' Launch the application
#'
#' @param app_port the port on which the app is available
#' @return nothing
#' @export
#' @importFrom shiny runApp

launch <- function(app_port=8888)
{
  runApp(port = app_port,
         appDir = system.file(package = "RBoilerplateShinyWithCredentials"))
}

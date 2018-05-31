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

#' Return credentials stored in environment variable
#'
#' @return list containing the credentials
#' @export
get_credentials <- function(){
  list(host=Sys.getenv("RBoilerplateShinyWithCredentials_host"),
       user=Sys.getenv("RBoilerplateShinyWithCredentials_user"),
       password=Sys.getenv("RBoilerplateShinyWithCredentials_pwd"))
}

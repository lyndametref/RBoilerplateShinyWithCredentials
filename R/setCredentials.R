
#' Return username stored in environment variable
#'
#' @return string containing the username
#' @export
get_username <- function(){
  Sys.getenv("RBoilerplateShinyWithCredentials_user")
}

#' Return password stored in environment variable
#'
#' @return string containing the password
#' @export
get_password <- function(){
  Sys.getenv("RBoilerplateShinyWithCredentials_pwd")
}

#' Set username stored in environment variable
#'
#' @param username string containing the username to be set
#' @return logical verctor indicating if username could be set
#' @export
set_username <- function(username){
  Sys.setenv(RBoilerplateShinyWithCredentials_user = username)
}

#' set password stored in environment variable
#'
#' @param password string containing the password to be set
#' @return logical verctor indicating if password could be set
#' @export
set_password <- function(password){
  Sys.setenv(RBoilerplateShinyWithCredentials_pwd = password)
}

#' Module UI function setting the input fields for setting up credentials
#' Use as default credentials available in environment variable
#'
#' @param id Module id
#'
#' @return a tag list containing input widgets for username and password
#' @export

credentialsInput <- function(id) {
  ns <- NS(id)

  tagList(
    textInput(ns("username"), "Username", value = get_username()),
    passwordInput(ns("password"), "Password", value = get_password()),
    actionButton(ns("credentialSubmitButton"), "Submit" ))
}

#' Module server function setting the username and passwing as env var when
#' Submit is clicked
#'
#' @param input seesion input object
#' @param output session output object
#' @param session seesion object
#'
#' @return -
#' @export
setCredentials <- function(input, output, session){
  observeEvent(input$credentialSubmitButton,{
    set_username(input$username)
    set_password(input$password)
    ##make sure configration is ok, remove line in operation
    print(paste(get_username(),get_password()))
  })
}

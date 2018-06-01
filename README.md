# RBoilerplateShinyWithCredentials
Boiletplate  R project featuring a packaged shiny app using environment variables
to store credentials (DB, website login, API tocken, etc)

## Notes
- The credentials are stored in a .Rprofile contained in the user ~ folder or in 
the project folder:
```
Sys.setenv(RBoilerplateShinyWithCredentials_host="some hostname")
Sys.setenv(RBoilerplateShinyWithCredentials_user="some username")
Sys.setenv(RBoilerplateShinyWithCredentials_pwd="some password")
```
- It is also possible to set the credentials in a .Renviron file (cf `?Startup`)
- The .gitignore files thus ignore .Rprofile/.Renviron to avoid sharing secret by mistake
- By deflault the app will run on port 8888, launch(xxxx) will change the port to xxxx.

## Build

- Generate documentation: Build > Document (Ctrl Shift D)
- Install and restart R session: Build > Install and Restart (Ctrl Shift B)
- Start App:
```
library(RBoilerplateShinyWithCredentials) # Automatically done by previous step
launch()
```

## Dockerization
The Dockerfile and the scripts allows to build a Docker image (dockerize.sh) and 
start a container (dock.sh). The Docker image is based on the rocker/r-base and
install shiny as well as the developed package. Once run, the shiny app is launch
and listen on port 8888 mapped also to 8888 outside the container.

## References
https://cran.r-project.org/web/packages/httr/vignettes/secrets.html
https://hub.docker.com/u/rocker/

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

## References
https://cran.r-project.org/web/packages/httr/vignettes/secrets.html

# R Boilerplate Shiny application with Docker deployement
Boiletplate  R project featuring a packaged shiny app with Dockerfile and scripts to build and run docker containers

## Build

- Generate documentation: Build > Document (Ctrl Shift D)
- Install and restart R session: Build > Install and Restart (Ctrl Shift B)
- Start App:
```
library(RBoilerplateShinyDocker) # Automatically done by previous step
launch()
```

## Dockerization
The Dockerfile and the scripts allows to build a Docker image (dockerize.sh) and 
start a container (dock.sh). The Docker image is based on the rocker/r-base and
install shiny as well as the developed package. Once run, the shiny app is launch
and listen on port 8888 mapped also to 8888 outside the container.

## References
https://hub.docker.com/u/rocker/

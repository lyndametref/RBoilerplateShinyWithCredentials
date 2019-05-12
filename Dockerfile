FROM r-base:latest
MAINTAINER Lynda Metref "lynda.metref@gmail.com"

RUN R -e "install.packages('shiny')"

# Expect a single file in the build directory
COPY build/RBoilerplateShinyDocker*.tar.gz .
RUN R -e "install.packages(dir(pattern='RBoilerplateShinyDocker.*'))"

EXPOSE 8888
ENTRYPOINT ["R", "-e", "library(RBoilerplateShinyDocker); launch(8888,'0.0.0.0')"]

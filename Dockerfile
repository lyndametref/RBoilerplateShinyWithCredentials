FROM r-base:latest
MAINTAINER Lynda Metref "lynda.metref@gmail.com"

RUN R -e "install.packages('shiny')"

# Expect a single file in the build directory
COPY build/RBoilerplateShinyWithCredentials*.tar.gz .
RUN R -e "install.packages(dir(pattern='RBoilerplateShinyWithCredentials.*'))"

EXPOSE 8888
ENTRYPOINT ["R", "-e", "library(RBoilerplateShinyWithCredentials); launch(8888,'0.0.0.0')"]

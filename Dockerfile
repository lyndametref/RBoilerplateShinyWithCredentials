FROM r-base:latest
MAINTAINER Lynda Metref "lynda.metref@gmail.com"

RUN R -e "install.packages('plumber')"

# Expect a single file in the build directory
COPY build/RBoilerplateAPI*.tar.gz .
RUN R -e "install.packages(dir(pattern='RBoilerplateAPI.*'))"

ENTRYPOINT ["R","-e","library(RBoilerplateAPI); launchAPI(8080,'0.0.0.0')"]

FROM r-base:latest
MAINTAINER Lynda Metref "lynda.metref@gmail.com"

RUN R -e "install.packages('shiny')"
RUN R -e "install.packages('plumber')"

# Expect a single file in the build directory
COPY build/RBoilerplate*.tar.gz .
RUN R -e "install.packages(dir(pattern='RBoilerplate.*'))"

ENTRYPOINT ["R","-e"]

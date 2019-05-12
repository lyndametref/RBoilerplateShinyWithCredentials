#!/bin/bash

# -it (iteractive) is only for testing (access to R console) remove for production
docker run -it --rm -p 8888:8888 rboilerplate-shiny-docker

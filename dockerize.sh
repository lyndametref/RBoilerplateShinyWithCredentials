#!/bin/bash
R -e "roxygen2::roxygenize('.', roclets=c('rd', 'collate', 'namespace'))"
mkdir build
cd build
rm *
R CMD build ..
cd ..
docker build -t rboilerplate-api .

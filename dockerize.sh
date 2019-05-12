#!/bin/bash
cd build
rm *
R CMD build ..
cd ..
docker build -t rboilerplate-api .

#!/bin/bash

# Patch configure script to use LDFLAGS so that proper RPATH is set for libtbb test binary
sed -i 's/${CXX} ${CXXFLAGS} ${TBBFLAGS}/${CXX} ${CXXFLAGS} ${LDFLAGS} ${TBBFLAGS}/' configure

export DISABLE_AUTOBREW=1
$R CMD INSTALL --build . ${R_ARGS}

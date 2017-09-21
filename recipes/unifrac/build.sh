#!/bin/bash

export PERFORMING_CONDA_BUILD=True
export LIBRARY_PATH="${CONDA_PREFIX}/lib"
export CPLUS_INCLUDE_PATH="${CONDA_PREFIX}/include"

if [ "$(uname)" == "Darwin" ]; then
    export MACOSX_DEPLOYMENT_TARGET=10.12
fi

pushd sucpp
make api
popd


$PYTHON setup.py install

# Add more build steps here, if they are necessary.

# See
# http://docs.continuum.io/conda/build.html
# for a list of environment variables that are set during the build process.

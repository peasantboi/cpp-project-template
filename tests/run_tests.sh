#!/bin/bash

# Run tests by calling tests/run_tests.sh from the root directory

# Run Catch tests
echo "Compiling test binary..."
g++ tests/*.cpp\
  ./src/*.cpp\
  -std=c++11\
  -std=gnu++11\
  -o ./testBin\
  -I ./\

chmod +x ./testBin
echo "Running Tests..."
./testBin
echo "Cleaning test binary..."
rm ./testBin

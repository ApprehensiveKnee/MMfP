#!/bin/bash

# Run the batch of Gaussian jobs in the background
for dir in temp_*/; do
  cd "$dir" || continue
  
  g09 *.com #&

  cd ..
done
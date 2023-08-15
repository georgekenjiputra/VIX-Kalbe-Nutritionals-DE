#!/bin/bash

# Variables
path="/hdfs/data/data1"
name_of_directory="data1"

# Check if directory exists
if [ -d "$path/$name_of_directory" ]; then
  echo "There is $name_of_directory Directory Exists!"
else
  echo "$name_of_directory Directory Not Exists!"
  mkdir -p "$path/$name_of_directory"
  echo "Created $name_of_directory Directory."
fi

# Variables
# path="C:/Users/georg/OneDrive/Documents/Virtual Internship"
# name_of_directory="Kalbe Nutritionals"

# Variables
# path="C:/Users/georg/OneDrive/Documents/Virtual Internship"
# name_of_directory="Kalbe"
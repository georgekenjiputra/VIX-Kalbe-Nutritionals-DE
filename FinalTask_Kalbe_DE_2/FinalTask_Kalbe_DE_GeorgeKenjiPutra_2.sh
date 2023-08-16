#!/bin/bash

# Variables
path="/hdfs/data/data1"
name_of_directory="data1"
filename_excel="daily_market_price.xlsx"
source_dir="/local/data/market"
target_dir="$path/$name_of_directory"
log_file="$target_dir/move_log.txt"

# Check if directory exists
if [ -d "$target_dir" ]; then
    echo "There is $name_of_directory Directory Exists!"

    # Copy file from source to target directory
    cp "$source_dir/$filename_excel" "$target_dir/"

    if [ $? -eq 0 ]; then
        echo "File Moved Successfully" > "$log_file"
    else
        echo "Failed to move the file" > "$log_file"
    fi
else
    echo "$name_of_directory Directory Not Exists!"
    mkdir -p "$target_dir"
    echo "Created $name_of_directory Directory."
fi

# Variables
# path="C:/Users/georg/OneDrive/Documents/Virtual Internship/Kalbe Nutritionals/Data Engineering/Week 04"
# name_of_directory="FinalTask_Kalbe_DE_2"
# filename_excel="FinalTask_Kalbe_DE_GeorgeKenjiPutra_2.xlsx"
# source_dir="C:/Users/georg/OneDrive/Documents/Virtual Internship/Kalbe Nutritionals/Data Engineering/Source"
# target_dir="$path/$name_of_directory"
# log_file="$source_dir/move_log.txt"
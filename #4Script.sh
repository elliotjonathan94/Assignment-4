#!/bin/bash

# Create list of variables
VARNAMES="hometown,genre,weather,animals,flowers"
# What is the name of your hometown?
echo "What is the name of your hometown?"
read HOMETOWN
# What genre of music do you prefer?
echo "What genre of music do you prefer?"
read GENRE
# What is your favorite type of weather?
echo "What is your favorite type of weather?"
read WEATHER
# What is your favorite animal?
echo "What is your favorite animal?"
read ANIMALS
# What is your favorite flower?
echo "What is your favorite flower?"
read FLOWERS
# Addition of a timestamp
TIMESTAMP=`date --iso-8601=seconds`
echo "$TIMESTAMP"
# Create a unique identifier
UUID=$(cat /proc/sys/kernel/random/uuid)
# Convert all of the answers that are recorded into a CSV file and compile them
echo "$HOMETOWN,$GENRE,$WEATHER,$ANIMALS,$FLOWERS" > ./tmp.csv
# Read file in CSV
cat tmp.csv
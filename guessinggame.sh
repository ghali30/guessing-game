#!/usr/bin/env bash


function count_files {
    echo $(ls -1 | wc -l)
}


file_count=$(count_files)

echo "Welcome to the Guessing Game!"
echo "Can you guess how many files are in the current directory?"


while true
do
    read -p "Enter your guess: " guess

   
    if [[ ! $guess =~ ^[0-9]+$ ]]
    then
        echo "Please enter a valid number."
        continue
    fi

    if [[ $guess -lt $file_count ]]
    then
        echo "Too low! Try again."
    elif [[ $guess -gt $file_count ]]
    then
        echo "Too high! Try again."
    else
        echo " Congratulations! You guessed correctly: $file_count files."
        break
    fi
done

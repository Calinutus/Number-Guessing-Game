#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo "Enter your username:"
read USERNAME

USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'" | xargs)
if [[ -z $USER_ID ]]
then
 INSERT_USER_RESULT=$($PSQL "INSERT INTO users(username) VALUES ('$USERNAME')")
 USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'" | xargs)
 echo "Welcome, $USERNAME! It looks like this is your first time here."
else
 GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games  WHERE user_id=$USER_ID" | xargs)
 BEST_GAME=$($PSQL "SELECT MIN(number_of_guesses) FROM games WHERE user_id=$USER_ID" | xargs)
 echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

SECRET_NUMBER=$(( RANDOM % 1000 + 1 ))
GUESS_COUNT=1

echo "Guess the secret number between 1 and 1000:"
read GUESS

while [[ $GUESS -ne $SECRET_NUMBER ]]
do
 if [[ ! $GUESS =~ ^[0-9]+$ ]]
 then
  echo "That is not an integer, guess again:"
 elif [[  $GUESS  -gt $SECRET_NUMBER ]]
 then
  echo "It's lower than that, guess again:"
 else
  echo "It's higher than that, guess again:"
 fi
 GUESS_COUNT=$(( GUESS_COUNT + 1 ))
 read GUESS
done

INSERT_GAME=$($PSQL "INSERT INTO games(user_id, number_of_guesses, secret_number) VALUES($USER_ID, $GUESS_COUNT, $SECRET_NUMBER)")
echo "You guessed it in $GUESS_COUNT tries. The secret number was $SECRET_NUMBER. Nice job!"
exit

#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo $($PSQL "TRUNCATE games,teams")

cat games.csv | while IFS="," read -r YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  # WINNER # WINNER # WINNER #########################################
  if [[ $WINNER != "winner" ]]
  then
    # get winner
    WINNER_ID=$($PSQL "SELECT name FROM teams WHERE name='$WINNER'")
    #if winner not found
    if [[ -z $WINNER_ID ]]
    then
      #insert new winner
      INSERT_WINNER=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
      #echo inserted winner
      if [[ $INSERT_WINNER == "INSERT 0 1" ]]
      then
        echo Inserted winner: $WINNER
      fi
    fi
  fi

  # OPPONENT # OPPONENT # OPPONENT #########################################
  if [[ $OPPONENT != "opponent" ]]
  then
    # get opponent
    OPPONENT_ID=$($PSQL "SELECT name FROM teams WHERE name='$OPPONENT'")
    #if opponent not found
    if [[ -z $OPPONENT_ID ]]
    then
    #insert new opponent
    INSERT_OPPONENT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
      #echo inserted opponent
      if [[ $INSERT_OPPONENT == "INSERT 0 1" ]]
      then
        echo Inserted opponent: $OPPONENT
      fi
    fi
  fi

  # GAMES # GAMES # GAMES #########################################
      if [[ YEAR != "year" ]]
      then
        #get winner
        WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
        #get opponent
        OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
        #insert new game
        INSERT_GAME=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES ($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS)")
          # echo inserted game
          if [[ $INSERT_GAME == "INSERT 0 1" ]]
            then
              echo Inserted game: $YEAR, $ROUND, $WINNER_ID VS $OPPONENT_ID, score $WINNER_GOALS:$OPPONENT_GOALS
          fi
    fi


done

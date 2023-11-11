# /bin/bash

PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"

if [[ -z $1 ]]; then
  echo Please provide an element as an argument.
else
  # get input type
  case $1 in
    # if input is a number
    [0-9]*)
      input_type="atomic_number" ;;
    # if input is a symbol
    [A-Z][a-z])
      input_type="symbol" ;;
    [A-Z])
      input_type="symbol" ;;
    # if input is a word
    [A-Z][a-z]*)
      input_type="name" ;;
    # if input is not any of the above
    *)
      # rerun script with no input
      ./element.sh
      exit 1
      ;;
  esac
  # get atomic number
  atomic_number=$($PSQL "SELECT atomic_number FROM elements WHERE $input_type='$1'")
  # check if atomic number is in database
  if [[ ! -z $atomic_number ]]; then
    # get the rest of the info
    name=$($PSQL "SELECT name FROM elements WHERE $input_type='$1'")
    symbol=$($PSQL "SELECT symbol FROM elements WHERE $input_type='$1'")
    type=$($PSQL "SELECT type FROM elements INNER JOIN properties USING(atomic_number) WHERE $input_type='$1'")
    mass=$($PSQL "SELECT atomic_mass FROM elements INNER JOIN properties USING(atomic_number) WHERE $input_type='$1'")
    melting_point=$($PSQL "SELECT melting_point_celsius FROM elements INNER JOIN properties USING(atomic_number) WHERE $input_type='$1'")
    boiling_point=$($PSQL "SELECT boiling_point_celsius FROM elements INNER JOIN properties USING(atomic_number) WHERE $input_type='$1'")
    # print result
    echo "The element with atomic number $atomic_number is $name ($symbol). It's a $type, with a mass of $mass amu. $name has a melting point of $melting_point celsius and a boiling point of $boiling_point celsius."
  else
    echo I could not find that element in the database.
  fi
fi
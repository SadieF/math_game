
## Nouns:
  # Player /
  # Lives /
  # Game /
  # Questions/Problem /
  # Answer
  # Turn

##Roles

#Game - Stores the players, questions, score, answers, and turns

#Questions/Problems - Stores the questions and answers, returns true or false when questions are answered

#Player - Store the lives remaining, differentiating between players, and defines that the current player can answer the question

#Lives - Stores the remaining number of lives, subtracts one when question is answered incorrectly

#Turn - Determines which player's turn it is.


##Methods

#Game
  -Name of math game

#Questions/problems  I/O
  -lists each question and corresponding answer
  -takes IN user input, applies it to the question and returns a boolean value
  -if false remove a life from player, if true AND player has > 0 lives, keep looping - return lives & switch player
  -If doesn't, say you lose
  -Manages current player

#Player
  -Stores player names
  -Sets lives to 3 initially






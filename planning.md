# TwO-O-Player Math Game

## Two-player math game where players take turns to answer simple math addition problems
- generates random question between 1 - 20
- each player starts with 3 lives
- player must answer correctly or will lose a life
- at the end of each turn, the game will display the new scores for both players
- game ends when one player loses all their lives
- announces winner


## Classes
  ### Player
    - initialize player lives, att_accessor to read and write
    - lose_life - method to remove 1 life if question is answered incorrectly
    - no_lives_left - method to check if no lives are left
    - new_question - method to ask current player a question, receive their answer using $stdin.gets.chomp, and performs check

  ### Question
    - initializer @num1, @num2 set to random num between 1 - 20
    - initialize @sum = @num1 + @num2
    - ask_question - method that asks "#{@num1} + #{@num2} = ?"
    - check_answer - method to check if user answer is correct, attr_accesssor to access answer

  ### Game
    - initialize @player1 & @player2
    - start - method to start the game
    - show_score - method to display player scores at end of each turn
    - check_score - method to check if a player is out of lives to declare winner
    - declare_winner - method to display winner and stop game
    - turn_order - method to cycle player turn, check score, and call turn again
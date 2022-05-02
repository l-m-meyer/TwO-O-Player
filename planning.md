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
    - initializer @left_num, @right_num between 1 - 20
    - ask_question - method to randomly pick a question "#{@left_num} + #{@right_num} = ?"
    - check_answer - method to check if user answer is correct, attr_accesssor to access answer

  ### Game
    - initialize @player1 & @player2, and @current_player; could be an array to get rid of current_player
    - start - method to start the game
    - show_score - method to display player scores at end of each turn
    - check_score - method to check if a player is out of lives to declare winner
    - declare_winner - method to display winner and stop game
    - turn_order - method to toggle player turn and set @current_player, and call turn again
class Game

  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
  end
  
  def start
    puts "Welcome Players! A new game is starting."
    turn_order
  end

  def show_score
    puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
  end

  def check_score
    if @player1.no_lives_left?
      declare_winner(@player2)
    elsif @player2.no_lives_left?
      declare_winner(@player1)
    end
  end

  def declare_winner(player)
    puts "#{player.name} wins with a score of #{player.lives}"
    puts "----- GAME OVER -----"
    puts "Good bye!"
    exit(0)
  end

  def turn_order
    @player1.new_question
    check_score
    @player2.new_question
    check_score
    show_score
    puts "----- NEW TURN -----"
    turn_order
  end

end
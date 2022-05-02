class Player
  attr_accessor :lives

  def initialize
    @lives = 3
  end

  def lose_life
    @lives -= 1
  end

  def no_lives_left?
    @lives == 0
  end

  def new_question
    new_question = Question.new

    @player_answer = $stdin.gets.chomp
  end


end
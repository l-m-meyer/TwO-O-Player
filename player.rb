class Player
  attr_accessor :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def lose_life
    @lives -= 1
  end

  def no_lives_left?
    @lives == 0
  end

  def new_question
    question = Question.new
    question.ask_question(name)
    print "> "
    @player_answer = $stdin.gets.chomp

    if question.check_answer(@player_answer.to_i)
      puts "YES! You are correct."
    else
      puts "Seriously? No."
      lose_life
    end
  end
end
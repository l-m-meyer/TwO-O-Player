class Question
  attr_accessor :player_answer

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @sum = @num1 + @num2
  end

  def ask_question

  end

  def check_answer(player_answer)
    @sum == player_answer
  end
  
end
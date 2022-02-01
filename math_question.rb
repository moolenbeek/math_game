# Math_question Class #
class Math_question
  def initialize
    @num1 = rand(21)
    @num2 = rand(21)
    @answer = @num1 + @num2
  end

  attr_reader :num1
  attr_reader :num2
  attr_reader :answer
end
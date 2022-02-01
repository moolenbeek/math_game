# Player Class #
class Player
  def initialize(name)
    @name = name
    @lives = 3
  end

  def wrong_answer
    @lives = @lives - 1
  end 

  attr_reader :name
  attr_reader :lives
end
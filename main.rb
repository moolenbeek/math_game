require './player'
require './math_question'

# Initialize 2 new players #
player1 = Player.new('Player 1')
player2 = Player.new('Player 2')


# puts "#{player1.name} has #{player1.lives} lives"
# puts "#{player2.name} has #{player2.lives} lives"


# current_player variable to keep track of players turn #
current_player = player2

while player1.lives > 0 && player2.lives > 0

  puts "----- NEW TURN -----"
  # change state of current player #
  if current_player == player2
    current_player = player1
  else
    current_player = player2
  end

  # initialize values for new math question #
  question = Math_question.new
  num1 = question.num1
  num2 = question.num2

  puts "#{current_player.name}: What is #{num1} plus #{num2} equal?"

  answer = gets.chomp

  if question.answer != answer.to_i
    current_player.wrong_answer
    puts "#{current_player.name}: Wrong answer!"
  else 
    puts "#{current_player.name}: Yes! You are correct!"
  end

  puts "P1: #{player1.lives}/3 P2: #{player2.lives}/3"
end

if player1.lives > player2.lives
  puts "Player 1 wins with a score of #{player1.lives}/3"
else
  puts "Player 2 wins with a score of #{player2.lives}/3"
end

puts "----- GAME OVER -----"
puts "Goodbye!"

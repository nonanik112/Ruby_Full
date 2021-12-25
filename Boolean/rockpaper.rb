# valid moves
# moves = ['rock', 'paper', 'scissors']

# # Get player move
# print "pick your move \n"
# #p_move = gets.chomp
# p_move = moves.sample
# puts "you played #{p_move}."
#
# # Get computer move
# c_move = moves.sample
# puts "computer played #{c_move}."

# see who won

# three possibilities
# user wins
# if p_move == 'rock' && c_move == 'scissors'
#   puts "you win"
# elsif p_move == 'paper' && c_move == 'rock'
#     puts "you win"
# elsif p_move == 'scissors' && c_move == 'paper'
#     puts "you win"
# # computer wins
# elsif p_move == 'rock' && c_move == 'paper'
#     puts "computer wins"
# elsif p_move == 'paper' && c_move == 'scissors'
#   puts "computer wins"
# elsif p_move == 'scissors' && c_move == 'rock'
#   puts "computer wins"
#
# # it's a tie
# elsif p_move == 'rock' && c_move == 'rock'
#   puts "it's a tie"
# elsif p_move == 'paper' && c_move == 'paper'
#   puts "it's a tie"
# elsif p_move == 'scissors' && c_move == 'scissors'
#   puts "it's a tie"
# unexpected input
# if p_move == c_move
#   puts "it's a tie"
# elsif p_move == 'rock'
#   if c_move == 'scissors'
#     puts 'you vin'
#   elsif c_move == 'paper'
#     puts 'computer wins'
#   end
# elsif p_move =='paper'
#   if c_move == 'rock'
#     puts "you win"
#   elsif c_move == 'scissors'
#     if c_move == 'paper'
#     puts "computer win"
#   elsif c_move == 'rock'
#     puts 'you win'
# else
#   puts "unexpected input"
#   end
#  end
# end

# case [p_move, c_move]
# when ['rock', 'scissors'], ['paper', 'rock'], ['scissors', 'paper']
#   puts 'you win'
# when ['scissors', 'paper'], ['rock', 'paper'], ['paper', 'scissors']
#   puts "computer you win"
# when ['rock', 'rock'], ['paper', 'paper'], ['scissors', 'scissors']
#   puts "it's a tie"
# else
#   puts "unexpected input"
# end
#
# win_scenarios = [
#   ['rock', 'scissors'],
#   ['paper', 'rock'],
#   ['scissors', 'paper']
# ]
#
# lose_scenarios = [
#   ['scissors', 'paper'],
#   ['rock', 'paper'],
#   ['paper', 'scissors']
# ]
#
# this_game = [p_move, c_move]
# puts (
#  if p_move == c_move
#     "it's a tie"
#  elsif win_scenarios.include?(this_game)
#     "you win"
#  elsif lose_scenarios.include?(this_game)
#     "computer wins"
#  else
#     "unexpected input"
#  end
# )

# /////////// ------------------ ///////////////////// ------------------ ////////////////////
# Truthiness

# condition = nil
#
# if condition
#   puts "It's truthy"
# else
#   puts "It's falsey"
# end

falsey_values = [nil, false]
truthy_values = "Everthin else"

baby_name = nil
baby_name = false
baby_name = "Franklin"

baby_name = "Eudamonoius"
baby_name = nil

puts "What aout Robert" unless baby_name
if baby_name && baby_name.length >= 10
  puts "It's that kind of long?"
end

baby_name = baby_name || "Robert"
baby_name = baby_name || "Copernicus"
baby_name ||= "Balthasar"

p baby_name

# p("i'm being evaluated") && p("right side being evaluated")
p("i'm being evaluated") || p("right side being evaluated")

variable = 0
#variable = variable <operator> <expression>
variable = variable + 1
variable += 1

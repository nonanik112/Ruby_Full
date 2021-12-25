# puts "You enter a room with 5 doors, Witch do you go through?"
# puts "<Enter 1, 2, or 3>"
# # door_number = gets.chomp.to_i
# door_number = gets.strip.downcase
# # if door_number == 1
# #   puts "There is a tiger and he eats you."
# # elsif door_number == 2
# #   puts "You find a whole bunch of gold"
# # elsif door_number == 3
# #   puts "You find a mysterious an with rubies for eyes"
# # else
# #   puts "You were supposed to pick 1, 2, or 3."
# # end
# case door_number
# when "1", "bir"
#   puts "There is a tiger and he eats you."
# when "2", "iki"
#   puts "You find a whole bunch of gold"
# when "3", "üc"
#   puts "You find a mysterious an with rubies for eyes"
# else
#   puts "You were supposed to pick 1, 2, or 3."
# end
# puts door_number

# /////////////////////////////////////////////////////////////

# Single-Line- ıf Statement

# box = "bananas"
# box = "apples"
# # if box == "bananas"
# #   puts "my bananas have arrived!"
# # end
# #puts "my bananas have arrived!" if box == "bananas"
# def check_for_bananas(box)
#   return false if box != "bananas"
#   puts "my bananas have arrived!" if box == "bananas"
# end
# check_for_bananas(box)

# Ternary Operator / Expression
#
# def max(x, y)
#  if x > y
#    return x
#  else
#    return y
#   end
# end
# def max(x, y)
#   x > y ? x : y
# end
# puts max(12, 7)
# puts max(15, 28)
# puts max(6, 6.0)

# def  who_wins(player_score, computer_score)
#   if player_score > computer_score
#     puts "You win"
#   else
#     puts "You lose"
#   end
# end
# def  who_wins(player_score, computer_score)
#     puts player_score > computer_score ? "You Win" : "You Lose"
# end
# def  who_wins(player_score, computer_score)
#     puts "You #{player_score > computer_score ? "Win" : "Lose"}"
# end
#
# who_wins(34, 12)
# who_wins(11, 99)
# who_wins(13, 13)
# rand()
# puts rand

# //////////////////////////////////////////////////////////////////////

# Not Operators
# true
# false
#
# puts true
# puts !true
# puts true == false
# puts true != false
# puts false && true
# puts !false
#
# puts 7
# puts -7
# puts --7
#
# raining = true
# raining = false
# if !raining
#   puts "ok, i'll come to the beach"
# else
#   puts "no way Jose"
# end

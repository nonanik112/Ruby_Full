# p rand(10)

def shuffle_and_pop(array)
  array.shuffle!.pop
end

players = ["Kenji", "Nonanik", "Blackhap", "Triop", "Bobby"]
# winner = players[rand(players.length)]

# winner = players.sample

# puts "And the winner is...#{winner} "

# players = {
#   3 => "Kenji",
#   5 => "Nonanik",
#   8 => "Blackhap",
#   4 => "Triop",
#   1 => "Bobby",
# }
#
# players.default = "nobody"

# winning_number = rand(10) + 1
# winner = players[winning_number]
# puts "And the winner is #{winner}!"
winner = shuffle_and_pop(players)
#p players.include?(winner)
puts "And the winner is...#{winner}!"
runner_up = shuffle_and_pop(players)
puts "And the runner up prize goes to...#{runner_up}"
p players

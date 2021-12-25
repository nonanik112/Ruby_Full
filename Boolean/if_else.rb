# Boolean
true
false

# IF statement/expression
condition = true
puts "I'm outside the conditional"
if condition
  puts "it was true"
else
  puts "it was false"
end
puts "I'm back outside the conditional"

it_is_raining = false

if it_is_raining
  puts "Bring an umbrella"
else
  puts "Wear shorts"
end

# Railway tracks
#                  ======================\\
# ==================//------//====================
#                   =======================\\

railway_switch = true
if railway_switch
  puts "train goes left"
else
  puts "train goes right"
end

puts "pick a number"
input = gets.chomp.to_i

magic_number = 7
if input > magic_number
  puts "Your number is greater than the magic number."
else
 puts "YOur number is less than or equal to the magic number."
end

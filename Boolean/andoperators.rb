# # And Operators
#
# raining = true
# Wearing_raincoat = true
# # (raining && wearing_raincoat)
# raining = false
# puts         "AND &&"
# puts "-----------------"
# puts "true && true   | true"
# puts "true && false  | false"
# puts "false && true  | false"
# puts "false && false | false"
#
# logged_in = true
# admin = false
#
# if (logged_in && admin)
#   puts "Access Granted"
# else
#   puts "Acces Denied"
# end
#
# puts
# puts "MULTIPLICATION"
# puts "--|-|-|-|-|-|-|-|-|-|-|-|-|--"
# puts "1 * 1 | 1"
# puts "1 * 0 | 0"
# puts "0 * 1 | 0"
# puts "0 * 0 | 0"
#
# puts "x * 1 = x"
# puts "x * 0 = 0"
#
# puts "x && true = x"
# puts "x && false = false"
#
# (1 * x)
# (0 * x)
# (true && x)
# (false && x)

# -------------------------------------------------------------
# /////////////////////////////////////////////////////////////
# Or Operators

has_a_dog = true
has_a_cat = true

puts "do you have pay the deposit"
pet_deposit = (has_a_dog || has_a_cat)
p pet_deposit

puts "Welcome to the museum"
puts "If you are a student or a senio you may pay a discounted rate."

puts "do you have student_id?"
input = gets.chomp
if input == "Yes"
  student = true
else
  student = false
end

puts "How old are you"
age = gets.chomp.to_i
senior = age >= 65
puts "Do you get the discount .. Hmmm... ?"

discount = (student || senior)
puts "YES!" if discount
puts "NO!" if !discount
if discount
  puts "Yes Developer"
else
  puts "NO Developer"
end

# Ranges / each / each_with_index / map / reduce \ inject / select / Hashes
# sidekicks = {
#   "Batman" => "Robin",
#   "Superman" => "Jimmy Olsen",
#   "Captain America" => "Bucky",
#   "Conan" => "Andy Richter"
# }
# sidekicks.each do |hero, sidekick|
#    puts "#{sidekick} is the sidekick of #{hero}."
# end
#
# sidekicks.each do |pair|
#     p pair
# end
#
# sidekicks.each_key do |hero|
#     puts "#{hero} works alone"
# end
#
# sidekicks.each_value do |sidekick|
#     puts "#{sidekick} is hanging with the Teen Titans this week "
# end
#
# # in older versions of Ruby hashes one are unordered
# sidekicks.each_with_index do |(hero, sidekick), index|
#   puts "#{index + 1}. #{hero} and #{sidekick} to the rescue!"
# end
#
# sidekicks.reject do |hero, sidekick|
#   hero.length > sidekick.length
# end
# # called map on a hash, got an array back.
# book_name =  sidekicks.map do |hero, sidekick|
#   "#{hero} & #{sidekick} Monthly"
# end

# ----------- /////////////// ------------ ////////////////

# Iterator Methods on Integers
#
# (3..7).each { |n| puts n}
# (-5...7).each { |n| puts n}
#
# # do something x times
# x = 9
# (1..9).each { puts "Hello" }
# (0...9).each { puts "hi" }
#
# # We can actually skip the step where we create a Range
# # We can call an iterator on an integer
#
# # x.upto(y) iterate over the range x..y without actually creating a range object
# 12.upto(24) { |x| puts x if x.even? }
# # x.times iterate x times (not worry about the block variable)
# 10.times { puts 'la'}
# counter = 0
# 20.times { counter += 1}
# puts counter

# -------------- */////////////////////* ------------------- ///////////////

# Repl Calculator
# Calculator / add / subtract / multiply / divide
# (2 numbers) / Repl / Read / Evaluate / Print / Loop

# while true do
#   print ">"
#   p eval(gets.chomp)
#   # all user input is either malicius or wrong
#   puts
# end
# Input format:
# <command> <arg1> <arg2>
# add 5 12

# def calculator
#   loop do
#     print '>'
#    input = gets.chomp.split(' ')
#    puts input
#    command = input[0]
#    arg1 = input[1].to_f
#    arg2 = input[2].to_f
#    p command, arg1, arg2
#    if command == "quit"
#      break
#    elsif command == "add"
#      puts arg1 + arg2
#    end
#    puts "I don't understand that."
#  end
#  puts "goodbye"
# end

def calculator
  loop do
    print '>'
   input = gets.chomp.split(' ')
   puts input
   command = input[0]
   # arg1 = input[1].to_f
   # arg2 = input[2].to_f
   # parallel assignment
   arg1, arg2 = input[1,2].map! {|n| n.to_f}
   # p command, arg1, arg2
   case command == "quit"
     break
   when "add", "sum", "plus", "+"
     puts arg1 + arg2
   when "multiply", "product", "*", "times"
     puts arg1 * arg2
   when "subtract", "minus", "difference", "-"
     puts arg1 - arg2
   when "divide", "/"
     puts arg1 / arg2
   else
      puts "I don't understand that."
   end
    puts
 end
 puts "goodbye"
end

calculator

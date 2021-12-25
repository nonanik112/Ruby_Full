# # Go through an array
# index = 0
# array = ['random', 'stuff', :for, 34253, "printing"]
#
# while index < array.length do
#   puts array[index]
#   index += 1
# end
# # For Loop
#
# for item in array do
#   puts item
# end
#
# # change the array
# # for item in array do
# #   item = item * 2
# # end
#
# puts "string" * 2
#
# # Ranges
# puts 1..10
# puts 1...10
#
# for i in (0...array.length) do
#    array[i] *= 2
# end
# p array

# ---- ||||| ------ ||||| ------ ////////////////// --------- |||||||||||
# Introduction to Iterators
object = ['stuff', 'that', 'lives', 'in', 'array']

for item in object do
  puts item.upcase
end

puts item

# Iterator ( type of method )
# each

object.each do |thing|
  puts thing.reverse
end

# Scope (variables just mean something in a particular context/part of the program)

object.each { |element| puts "element" * 2}
# Change the values in the array

(0...object.length).each do |i|
  object[i] = "evil" + object[i]
end

p object

dinosaurs = [
  't-rex',
  'brachiosaur',
  'brontosaurus',
  'raptor'
]

 dinosaurs.each_with_index do |dinosaur, index|
  dinosaurs[index] = "awesome " + dinosaur
end

# An enumerator is a method that takes a block

dinosaurs.include?("t-rex")
# a Block : {...} (one line block), do...end (multi-line block)
dinosaurs.each { | | }
# if your each isn't working, did you pass it a block?
dinosaurs.each

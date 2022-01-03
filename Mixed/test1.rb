# puts "Holy giraffes! You fell into a maze!"
# print "Where to? (N, E, S, W):"
# direction = gets.chomp
# puts "#{direction}, you say= A fine choice!"
# if direction == "N"
#    puts "You are in a maze of twisty little passages, all alike."
# elsif direction == "E"
#    puts "An elf! And his pet ham!"
# elsif direction == "S"
#    puts "A minotaur! Wait, no, that's just your reflection."
# elsif direction == "W"
#    puts "You're here, wherever here is."
# else
#    puts "Wait, is that even a direction?"
# end
# if flow_rate > 50
#   puts "Warning! flow_rate is not 50! It's #{flow_rate}"
#   flow_rate = 50
#   puıts "The flow_rate's been reset to #{flow_rate}."
# elsif flow_rate = 50
#   puts "Warning! flow_rate's been reset to #{flow_rate}"
# else
#   puts "The flow_rate is #{flow_rate} (thank goodness)"
# end
# print ('Adını söyle yabancı isim:')
# name = gets()
# puts ("Hello #{name}")

localvar = "meraba"
$globalvar = "görüşürüz"

def amethod
  localvar = 10
  puts(localvar)
  puts($globalvar)
end

def anotherMethod
  localvar = 500
  $globalvar = "Bonjur"
  puts(localvar)
  puts($globalvar)
end

amethod
anotherMethod
amethod
puts($globalvar)

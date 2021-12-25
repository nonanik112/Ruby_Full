# if-else Binnary decision
x = rand(100)
y = rand(100)
#y = x

# if x > y
#   puts "#{x} is greater than #{y}"
# else
#   if x == y
#     puts "#{x} is equal to #{y}"
#   else
#     if y != x
#      puts "#{y} eğer öyleyse #{x}"
#    else
#     puts "#{x} is less than or equal to #{y}"
#   end
#  end
# end
if x > y
  puts "#{x} is greater than #{y}"
elsif x == y
   puts "#{x} is equal to #{y}"
else
    puts "#{x} is less than or equal to #{y}"
end

print "What do you say?"
you_say = gets.chomp
print "I say"

if you_say == "potato"
   puts "potahto"
elsif you_say == "tomato"
  puts "tomahto."
elsif you_say == "car"
  puts "chowda!"
elsif you_say == "chowder"
  puts "chow!"
else
  puts "Let's call the whole thing off"
end

hash = {}
hash.default = "Not found"

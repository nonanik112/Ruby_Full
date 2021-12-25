# puts("hello world")
# Kernel.puts("hello squirrels")
#
# def say_hello
#   puts "hello"
# end
# :say_hello
# say_hello
#
# def greet(name)
#   puts "Hello, #{name}"
# end
# greet("David")
#
# def sum(x, y)
#   return x. + (y)
# end
# p sum(3,4)
# p sum(8,-122)
# p sum("Hello", "World")
#
# def product(x, y)
#    x * y
# end
# puts product(12, 6)
# product = product(12, 22)
#
# def exit_early
#   return "La La La"
#   puts "This string never prints"
# end
#
# p exit_early

# //////////////////////

# # Chaining Method
# def square_sum(x, y)
#    x**2 + y**2
# end
# square_sum(10, 20)
# return_value = square_sum(15, 20)
# other_return_value = "Bob Dylan".downcase
# puts (return_value)
# other_return_value.reverse
# "cool guy".reverse.upcase.insert(4, "oooo")
# puts square_sum(20, square_sum(square_sum(23, 1),2))
#
# variable = "object"
#
# puts (variable)

# /////////////////////////////////////////////////

"Batman".reverse

"Batman".upcase

vigilante = "Batman"
# puts vigilante.methods
# puts vigilante.methods.sort
# p 3
# p 3.to_s
# p "3".to_i
# p "3".to_f
# p "120 Bananas".to_i
# p "There are four lights".to_i
#
# print "x ="
# x = gets.chomp
#
# puts "x + 5 is #{x.to_i.+ (5)}"

# Booleans
# true
# false
#
# p vigilante == nil
# p vigilante.nil?
#
# p nil.nil?
# p vigilante.include?("B")
# p vigilante.include?("b")


# //////////////////////////////////////////

# Arguments
def sum(x=0, y=0, z=0)
  x + y + z
end

p sum(12, 4, 13)

def print_trio(first= "first", second="second", third="third")
  puts first
  puts second
  puts third
end
print_trio("WHAT", "UP?")

def greet(greeting="hey", name="...you")
    puts "#{greeting} #{name}"
end

greet("Hello", "Sir")
greet("Hello")
greet()
greet("Martha Stewart")

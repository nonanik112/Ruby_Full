# Everything Is An Object

# An object has state ( a value or values)

# test_string = "cowboy"
# p test_string.reverse!
# p test_string
#
# # Object have behaviours (methods)
#
# test_string.methods == "another string".methods # true
#
# # Members of the same  class have the same methods
#
# test_string.class # String
#
# # test_string has the instance methods of String
# # test_string is an instance of String
# # anything that a string can do, test_string can do
#
# String # name of the class
# # capitalized because class names are constants (as apposed to variables)
#
# 3.class # Fixnum
# 4.5.class # Float
# [].class
#
# new_hash = Hash.new # .new is a class method
# new_hash.methods == Hash.methods
# new_hash.methods == Hash.instance_methods
#
# #Instances (the specific onject) vs. Classes ( template for that type of object)

# -------------- ///////////////// ----------------- /////////////////////// ---

# Defining a Class

class Dog # Capitalized
  # define instance methods
  # attr_reader :name
  # attr_writer :name
    attr_accessor :name # if you can avoid using a getter or especially a setter you should do that.
  # define initalize

 def initialize(name)
   # save the arguments to instance variables
   @name = name
 end

  def speak
    puts "BARK!"
    puts "Excuse me, I'm #{@name}."
  end
  # define a getter
  def name
    @name
  end

#   def name=(new_name)
#     @name = new_name
#   end
 end

fido = Dog.new("Fido") # use .new class method to instantiate the class (to create a dog)

fido.methods

fido.speak

rex = Dog.new("Rex")
rover = Dog.new("Rover")

@name # defined on main object

# @bananas = 0
# def pick_bananas
#   @bananas += 1
# end
# pick_bananas
# p @bananas

# Accesors:
# getters let you read an instance variable
# setters let you  change an instance variable

p fido.name
rex.name="T-Rex"
p rex

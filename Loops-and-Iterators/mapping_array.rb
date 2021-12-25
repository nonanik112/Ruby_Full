# Iterators
# bad_guys = [
#   "Dart Vader",
#   "Biff Tannen",
#   "Maleficent",
#   "Regina George"
# ]
# opinions_about_bad_guys = []
# # Mapping an array to a new array
# #keep the original array the same
#
# one_to_ten = (1...10)
# squares = []
# one_to_ten.each  { |number| squares << number**2}
# puts one_to_ten
# puts squares
#
# # Map method
# # Map! - mutate the orginal array
# one_to_ten = one_to_ten.to_a
# p one_to_ten
# cubes = one_to_ten.map! { |n| n**3 }
# p cubes
# p one_to_ten

# Test ------------------------

# localvar = "hello"
# $globalvar = "goodbye"
#
# def amethod
#   localvar = 10
#   puts(localvar)
#   puts($globalvar)
# end
#
# def anotherMethod
#   localvar = 500
#   $globalvar = "selam"
#   puts(localvar)
#   puts($globalvar)
# end
# puts amethod
# puts anotherMethod
#
# class Dog
#   def set_name( aName )
#     @myname = aName
#   end
#   def get_name
#     return @myname
#   end
#   def talk
#     return 'woof!'
#   end
# end
# mydog = Dog.new
# yourdog = Dog.new
#
# mydog.set_name('fifi')
# yourdog.set_name('Banzo')
# puts(mydog.get_name)
# puts(mydog.talk)
#
# p Dog
class Thing
  def initialize(aName, aDescription)
    @name = aName
    @description = aDescription
    puts("Thin.initialize: #{self.inspect}\n\n")
  end
 def aMethod(aNewName)
   @name = aNewName
   puts("Thing.aMethod: #{self.inspect}\n\n")
 end
end

class Thing2 < Thing
  def initialize(aName, aDescription)
    super
    @fulldescription = "This is #{@name}, which is #{@description}"
    puts("Thing2.initialize: #{self.inspect}\n\n")
  end

 def aMethod( aNewName, aNewDescription)
   super(aNewName)
   puts("Thing2.aMethod: #{self.inspect}\n\n")
 end
end
class Thing3 < Thing2
  def initialize( aName, aDescription, aValue )
    super( aName, aDescription )
    @value = aValue
    puts("Thing3.initialize: #{self.inspect}\n\n")
  end
  def aMethod( aNewName, aNewDescription, aNewValue )
    super( aNewName, aNewDescription )
    @value = aNewValue
    puts("Thing3.aMethod: #{self.inspect}\n\n")
  end
end
class Thing4 < Thing3
  def aMethod
    puts("Thing4.aMethod: #{self.inspect}\n\n")
  end
end

class Thing5 < Thing4
  # code
end

t = Thing.new( "A Thing", "a lovely thing full of thinginess" )
t.aMethod( "A New Thing" )
p t

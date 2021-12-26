class Dog
  #
end

fido = Dog.new
fido.methods

fido.class.superclass


#              Object
#               V
#               |
# Fido ----> Dog

fido.methods == Dog.instance_methods
p Dog.instance_methods == Object.instance_methods

class Dog

def speak
  puts "Bark!"
end

end
p Dog.instance_methods == Object.instance_methods

# All Dogs are Objects, but not all Objects are Dogs
# Defining a subclass of a class
# Class that we inherit from is called the parent class or the superclass

class Shape; end

class Rectange < Shape; end

class Square < Rectange; end

class Triangle < Shape; end

class IsocelesTriangle < Triangle; end

square = Square.new
square.is_a?(IsocelesTriangle)

# the subclass is a specific kind of the superclass
# Classic Argument

# All Men Are Mortal
# Socrates is a Man:

# THEREFORE:
# Socrates is Mortal

class Mortal
  def initialize
    @alive = true
  end
  def die
    alive = false
  end
 end

class Man < Mortal; end

class Greek < Man; end

class Athenian < Greek; end

socrates = Athenian.new

p socrates.is_a? Mortal # Should return true

p socrates.class.ancestors.include?(Mortal)

p socrates

socrates.die

p socrates

class Pomeranian < Dog
  def speak
    super # call the method form the parent class
    puts "yep"
  end
end

charlie = Pomeranian.new
charlie.speak

fido.speak

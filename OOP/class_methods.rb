# class Person
#   def initialize(name)
#     @name = name
#   end
#   def name
#     @name
#   end
#   def introduce
#     puts "Hi, I'm #{@name}"
#   end
# end
#
# dave = Person.new('Dave')
#
# tom = Person.new("Tom")
# p dave
# p dave.name
#
# dave.introduce
# tom.introduce
#
# # p Person.instance_methods
# p Person.class
#
# class Person
# def self.introduce
# puts "I'm the abstract concept of a person"
#  end
#
#  class << self
#    def default_man
#      Person.new("John Doe")
#    end
#    def default_man
#      Person.new("John Doe")
#    end
#  end
#
# end
#
# person = Person.new("Anonymous")
#
# person.introduce
#
# Person.introduce # call the class method
#
# class Lawyer < Person
#
# end
# val = Lawyer.new("Val")
#
# p val
# val.introduce # inherited instance method
# Lawyer.introduce # inherit class methods
#
# p Person.default_man
# p Lawyer.default_man


# ///////////////////// ---------------------- ////////////////////// -------------

# Self
# puts self
# # We're always on an object
# # methods can be defined on the main object
#
# def main_method
#   puts self
# end
#
# main_method
#
# class Hamburger # self changes
#   puts self # self points to the class
#
#   def self.jingle
#     puts "domates biber patlıcan"
#     puts self # self refers to the class
#   end
#
#   def initialize
#     puts self # refers to the instance
#   end
#
#   def eat
#     "MMMMMM good."
#   end
#
#   def print_noise
#     puts eat # we can call eat with or without a receiver
#   end
#
# end
# Hamburger.new.print_noise
#
# Hamburger.jingle

# ----------------------- ///////////////////////// ---------------------- ///////////////////// -------------

# Scope Review and Class Variables

# Scope

# Algebra test
# Section 1:
# Find x.
# (The scope of x is the question where it occurs.)
# 1. 5x = 25
# 2. 2 + x = 102
# 3. 65 - x = 37


def sum_squares(x, y)
  x**2 + y**2
end

def square_sum(x, y)
  (x+y)**2
end
p sum_squares(2, 5)

p square_sum(3, 7)

p square_sum(2, 5)

# local variables can't be accessed from inside a different method than where they were defined
# we create a new scope for local variables when we define a method, create a block
# defined on self
# Instance variables can be accessed anywhere on the same Object
# at top level, instance variables are defined on main

# @bananas = 0
#
# def pick_banana
#   @bananas += 1
# end
#
# pick_banana
#
# class Teacher
#
#   attr_accessor :students
#
#   def initialize
#     @students = ['Lord', 'Kral']
#     puts self
#   end
# end
#
# ms_jones = Teacher.new
# ms_jones.students

class Customer
  @@total_customers = 0
   def initialize
       @@total_customers += 1
     puts "#{@@total_customers} customer served"
     @cart = []
   end
  def add_to_cart(product)
    @product = product
    product.mark_as_sold
    @cart.push(product)
 end # local variable dissapears at the end of the method

end

Customer.new
Customer.new
Customer.new
Customer.new

class VIPCustomer < Customer

end

VIPCustomer
Customer.new

local_variable = "I'm Local"
@instance_variable = "I belong to an instance"
@@class_variable = "I belong to the class"

# Principle of least Access:
# - good to make your variables have the smallest scope passible

# Methods That Take a Block
# (1..10).map { |x| x**2}
#
# def square(x)
#   x**2
# end
#
# p square(3)
# p square(12)
# p square(100)
#
# def do_something_to(x)
#   p block_given?
#   yield(x) if block_given?
# end
#
# p do_something_to(3) { |x| x**2}
# p do_something_to(12) { |x| puts "I love " + x.to_s}
# p do_something_to(100)
#
# def print_result(x)
#   p yield(x)
# end
# print_result(3) {|x| x**2}
#
# def sum_result(x,y)
#   x_result = yield(x)
#   y_result = yield(y)
#   x_result + y_result
# end
# p sum_result(2,3) {|x| x**2}
# p sum_result(2,3) {|x| x**x}
#
# def call_block_with_3_and_5
#   yield(3,5)
# end
# p call_block_with_3_and_5 {|x, y| x**y}
# p call_block_with_3_and_5 {|x, y| x*y}
# p call_block_with_3_and_5 {|x, y| x.even?}

# ------------------- |||||||||||||||||||||||| --------------------- ///////////

# Custom Iterators
class Array
  def custom_each
    i = 0
    while i < self.length do
      yield self[i]
      i += 1
    end
    self
  end
end

class sap < Array
  # code
end
[2, 3, 4].custom_each {|x| puts x**2}
(1..10).to_a.custom_each {|x| puts x if x.even?}

module Enumerable # included in classes with each
  def group_by_criteria
     yes_group = []
     no_group = []
    self.each do |x|
     if yield(x)
      yes_group << x
    else
      no_group << x
     end
    end
    [yes_group, no_group]
  end

end
(1..10).group_by_criteria {|x| x.even?}

# defined on enumerable
# select
# find
# any?
# map! (defined on Array)

# # Procs and lambdas are closures
# # they are funtions which have access o the scope that they were defined in.
#
# def proc_marker
#   counter = 1
#   proc { counter = counter + 1}
# end
#
# incrementer = proc_marker()
#
# # p incrementer.call()
# # p incrementer.call()
# # p incrementer.call()
# # p incrementer.call()
#
# def create_two_procs
#   unique_variable = 0
#   [
#     proc { unique_variable += 1},
#     lambda { unique_variable -= 1},
#     lambda { unique_variable }
#   ]
# end
# adder, subtractor, getter = create_two_procs()
# p adder.call()
# p adder.call()
# p adder.call()
# p subtractor.call()
# p getter.call()

# --------------- |||||||||||||||||||||| ----------------------  |||||||||||||||

# Closures for English Majors
#
# def string_builder_builder
#   string = ''
#   proc { |other_string| string << other_string}
# end
# string_builder_builder = string_builder_builder()
#
# p string_builder_builder.call("kola")
#
# p string_builder_builder.call("robot")
#
# p string_builder_builder.call("bla bla bla")
#
# string_builder_builder_2 = string_builder_builder()
#
# p string_builder_builder_2.call("hamsikafa")
#
# p string_builder_builder_2.call("parot")
#
# p string_builder_builder.call("bilogist")

# ------------------ ||||||||||||||||||||||||||||| ------------------------|||||
# Deneme

# def shuffle_and_pop(array)
#   array.shuffle!.pop
# end
#
# def method_name
#     "something that goes here"
#     :something_more_code
#     while something
#      "some code"
#   end
# end
#
# players = [
#   "Kerimcan",
#   "Yarcan",
#   "Selcan",
#   "Kadircan",
#   "Umutcan"
# ]
#
# winner = shuffle_and_pop(players)
# puts "Kazanan geliyor #{winner}!"
# runner_up = shuffle_and_pop(players)
# puts "En iyi koşucu geliyor #{runner_up}"
# p players

# puts "Selem merhaba."
# print ">"
# p gets.chomp
# puts "selem squirrels"

class Customer
  attr_reader :table, :server, :tab

  def setter(table, server)
    @table = table
    @server = server
    @tab = []
  end
  def suitable_tip?(tip)
     if tip >= subtotal * 1.15
       true
     else
       @bad_tipper = true
       false
     end
  end

  def order
    @tab << item
  end

  def cancel(item)
    @tab.delete(item)
  end

   def subtotal
     @tab.inject(0) do |sum, item|
       sum + item.price
     end
   end

   def total
     subtotal + (subtotal * tax_rate)
   end

end

p Customer

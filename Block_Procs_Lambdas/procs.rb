# # Everything Is an Object
# # Blocks are not objects
# # but procs are
#
# cube = Proc.new {|x| x**3}
#
# # works diffrently in older versions of Ruby
# #(< 1.9)
# square = proc {|x| x**2}
#
# cube.call(2)
# cube.call(3)
# cube.(9)
#
# def method_with_proc(p1, arg)
#   p1.call(arg)
# end
# method_with_proc(cube, 32)
#
# def method_with_procs(p1, arg1, p2, arg2)
#   p p1.call(arg1)
#   p p2.call(arg2)
# end
# method_with_procs(cube, 12, square, 11)
#
# # Use as a proc as a block
# # & to convert proc <-> block
#
# (1..10).each(&cube)
# (1..20).select(&:even?)
#
# odd = :odd?.to_proc
# # {|x| = :odd?}
# (1..11).map(&odd)
#
# def takes_a_block(&block)
#   12.times(&block)
# end
#
# takes_a_block {|x| puts "hello joe"}

# ---------------------- //////////////////////// ----------------------////////

# Procs vs Lambdas

procs = [
  # Standard procs
  #Proc.new {|x,y| p x + y},
  proc {p "Hello squirrels"},
  # Lambda (special type of proc)
  #lambda {|x| p x**2},
  ->(name, to_i) {p "Hello " + name == to_i}
]
# p procs.map(&:lambda?)
# p procs.map {|x| x.lambda?}

# Lambdas behave more like methods
#1 - ("vanilla") Procs don't care how many arguments you pass them

procs.each {|proc| proc.call("Luies", 21)}

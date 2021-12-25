# Iterators for filtering data
# numbers = [1220, 320, 424, 150, 283, 231, 48349]

# numbers.each { |n| puts n.odd?}
# numbers.map { |n| puts n.odd?}
# odds = numbers.select! { |n| puts n.odd?}
# evens = numbers.reject! { |n| puts n.even?}
# p odds
# p evens
# p numbers
# Iterators execute the block for each element of the object
#sometimes they stop early
# p((1..10).any? do |n|
#     puts n
#     n.odd?
# end)
#
# doubles = (1..10).map {|n| n*2}
# doubles.all? { |n| n.even? }
#
# doubles.all? do |n|
#   puts n
#   n.even?
# end

#check divisibility by 7
# use % (gives us the remainder)
# (1..10).all? do |n|
#    n % 7 == 0
#    puts(n) # returns nil
# end
# Select / get all the members for which { block } evaluates true
# detect AKA find / get the first member for which block is true

 # --------------------------------- ///////////////////////// ---------------

# Inject Reduction
# 
# costs =  [34.21, 45, 23.21, 65.34, 0.20]
# total_costs = 0
#
# costs.each do |receipt|
#   total_costs += receipt
# end
# p total_costs
#
# sum = costs.reduce(0) do |total, receipt|
#    total += receipt
# end
# p sum
#
# p (["There", "Can", "Only", "Be", "One"].inject("") do |str, word|
#   p str
#   p word
#   str << word
# end)
#
# p [3, 4, 12, 53, 21].inject { |product, n| product.*(n)}
# p [3, 4, 12, 53, 21].inject(:/)
#
# profits = 20_000
#
# expenses = [ 100, 3400, 213, 50, 21]
# p expenses.reduce(profits, :-)

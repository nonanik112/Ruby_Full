class Integer
    (1..900).each do |num|
      define_method "to_the_power_of_#{num}" do
        # puts self.send(:**, num)
        puts eval("#{self} ** #{num}")
    end
  end
end
puts "Without Meta #{9 * 300} lines of code "
puts "With Meta #{} lines of code"

number = 2
number.to_the_power_of_2
number.to_the_power_of_900

# puts "Without Meta #{9 * 300} lines of code"
# puts "With Meta 10 lines of code"
# eval("puts 'Hi World'")
# eval "puts 2*2"

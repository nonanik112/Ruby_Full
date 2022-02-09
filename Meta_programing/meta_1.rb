class Integer
  def to_negative
    - self
  end

  # def multiply_by_1
  #   self * 1
  # end
  #
  # def add_by_1
  #   self + 1
  # end

  # define_method "method" do |args|
  #   puts args
  # end
  (1..50000).each do |num|
    {:multiply => '*', :division => '/', :subtraction => '-', :addition => '+'}.each do |operation,operand|
      define_method "#{operation}_by_#{num}" do
        self.send(operand, num)
      end
    end
  end
end
# x = 99
# puts x.to_negative

# num = 9
# num.method("Hi Metaprograming")

# num = 9.0
# puts num.multiply_by_5
# puts num.division_by_5

num = 10
puts num.multiply_by_100

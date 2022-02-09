# class Dog
#   @@count = 0
#   def initialize
#     @@count +=1
#   end
#   def put_count
#     puts "@@count = #{@@count}"
#   end
# end

# Dog.new; Dog.new; Dog.new;
# Dog.new.put_count
# x = Dog.new
# y = Dog.new
# x.put_count
# y.put_count

class Foo
  def hog
    puts "hog"
  end
  alias_method  :put_hog,  :hog
end
Foo.new.hog
Foo.new.put_hog

x = Foo.new

puts x.methods #.include?"put_hog"

# if x.methods.include?(:something_non_existent)
#   x.send(:something_non_existent)
# else
#   puts "Did not Run"
# end

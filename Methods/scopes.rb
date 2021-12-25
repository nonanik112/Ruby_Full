def my_house
  dad = "David"
end
def sams_house
  dad = "Phil"
end
my_house

@bananas = 0
def pick_banana
  @bananas += 1
end

 pick_banana

def tally_me_banana
  puts "You ve picked #{@bananas} bananas."
end
tally_me_banana

def whats_in_scope(passed_variables)
  puts "I can see instance variables, like:"
  puts "@bananas:" + @bananas
  puts "I can see my method variables"
  puts "passed_variable:  + #{passed_variable}"
  puts "But watch out, because I can't see local variables outside the method"
  puts dad
end

dad = "Peter"
whats_in_scope(dad)

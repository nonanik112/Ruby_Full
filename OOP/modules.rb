class Engineer
  def do_math
    puts "NUMBERS"
  end
end

class Designer
  def make_pretty
    puts "Look how it flows"
  end
end

# Ruby does't allow classes to inherit from more than one parent class
# Instead, we can use modules (mixins)

module ManagementTraining
  def yelling
    puts "Get Back To WORK"
  end
end

# we can't instantiate a module
# steve = Manager.new
# p steve

class LeadEngineer < Engineer
  include ManagementTraining
  # let leadEngineer se the methods defined in the ManagementTraining module
end

class LeadDesigner < Designer
  include ManagementTraining
end

lead_eng = LeadEngineer.new
lead_des = LeadDesigner.new

lead_eng.do_math
lead_des.make_pretty

lead_eng.yelling
lead_des.yelling

p(lead_eng.class.ancestors)

# Methods in diguise?

Kernel.puts("Hello") # Kernel module is included in object.

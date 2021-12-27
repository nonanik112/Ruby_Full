# class Engineer
#   def do_math
#     puts "NUMBERS"
#   end
# end
#
# class Designer
#   def make_pretty
#     puts "Look how it flows"
#   end
# end
#
# # Ruby does't allow classes to inherit from more than one parent class
# # Instead, we can use modules (mixins)
#
# module ManagementTraining
#   def yelling
#     puts "Get Back To WORK"
#   end
# end
#
# # we can't instantiate a module
# # steve = Manager.new
# # p steve
#
# class LeadEngineer < Engineer
#   include ManagementTraining
#   # let leadEngineer se the methods defined in the ManagementTraining module
# end
#
# class LeadDesigner < Designer
#   include ManagementTraining
# end
#
# lead_eng = LeadEngineer.new
# lead_des = LeadDesigner.new
#
# lead_eng.do_math
# lead_des.make_pretty
#
# lead_eng.yelling
# lead_des.yelling
#
# p(lead_eng.class.ancestors)
#
# # Methods in diguise?
#
# Kernel.puts("Hello") # Kernel module is included in object.


# -------------------------- //////////////////////////// ---------------------

# Playing Cards: Object Interactions and Private Methods

class Deck
  SUITS = ['s', 'h', 'd', 'c']
  VALUES = (2..10).map(&:to_s) + ['J', 'Q', 'K', 'A']

  def initialize
     @stack = generate_stack
  end

  def draw
    @stack.pop
  end
  def shuffle
     @stack.shuffle!
  end

   private

  def generate_stack
    VALUES.product(SUITS).map!(&:join)
    # stack = []
    # VALUES.each do |value|
    #   SUITS.each do |suit|
    #     stack << value + suit
    #   end
    # end
    # stack
  end

end

class Player
  def initialize
    @hand = []
  end

  def draw(card)
     @hand << card
  end

  def peek_at_hand(player)
    reveal_hand
  end

  private

  def reveal_hand
    puts @hand
  end

end



class Dealer
  def initialize
    @deck = Deck.new
  end

  def deal_card(player)
    player.draw(@deck.draw)
  end

  def shuffle_deck
    @deck.shuffle
  end
  def burn_card
    @deck.draw
  end
  def open_pack
    @deck = Deck.new
  end

  def bad_method
    @deck.generate_stack
  end
end
# Deck::VALUES

# p deck = Deck.new

dealer = Dealer.new
tara = Player.new
gustin = Player.new

dealer.shuffle_deck
dealer.burn_card
5.times { dealer.deal_card(tara)}

p dealer
p tara

#dealer.bad_method

# tara.reveal_hand
# gustin.peek_at_hand(tara)
tara.peek_at_hand(tara)

class BankAccount

  def initialize(name, pin)
    @name = name
    @pin = pin
    @balance = 0
    @attempts = 0
  end

  def name; @name; end
  def pin; @pin; end
  def balance; @balance; end
  def attempts; @attempts; end

  def set_balance(symbol, amount)
    eval("@balance #{symbol}= #{amount}")
  end

   def incriment_attempts
     @attempts += 1
   end

end

class ATM < BankAccount
  def verified?(pin)
    if self.pin == pin
      true
    else
      increment_attempts
      if attempts >= 3
         self.freeze
      end
      false
    end
  end

   private

   def get_balance
     puts "#{name} you're balance is #{balance}"
     puts "You are broke !!" if balance <= 0
   end

  def withdraw(amount)
    puts "** # WARNING: *** You have overdrawn your account" if amount > balance
   self.set_balance("-", amount)
   get_balance
  end
  def deposit(amount)
    puts "Where did you get all that dough" if amount > 1000
    set_balance  "+", amount
  end

  alias_method :d, :deposit
  alias_method :w, :withdraw
  alias_method :gb, :get_balance

end

my_account = ATM.new("Nonanik",  12345)

while !my_account.frozen?
   puts "What is Your Pin"
   pin = gets.chomp.to_i
   if my_account.verified?(pin)
     puts "What Would You Like to do today?"
     command = gets.chomp.to_sym
     if my_account.respond_to? command, true
       if command == :w || command == :d
         "..."
       end
     else
       puts "That is not a command 1"

     end
   end
end
puts "You're a hacker get outa her 1" if my_account.frozen?

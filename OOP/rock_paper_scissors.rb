# OOP Rock, Paper, Scissors
# REPL RPS in OOP

# PLayer class (2 instances)

# Game (App class)

class Player
  MOVES = [:rock, :paper, :scissors]

  attr_reader :score, :move, :name

  def initialize(name)
    @name = name
    @score = 0
    @move = nil
  end

  def get_move
    loop do
      puts "Pick a move"
      print "> "
      @move = gets.chomp.strip.downcase.to_sym
      if @move = ":quit"
       return false
      elsif MOVES.include?(@move)
       return @move
      else
       puts "Invalid move."
      end
    end
  end

  def win
    @score += 1
  end

end

class ComputerPlayer < Player

   def get_move
     @move = [:rock, :paper, :scissors].sample
   end
end

class Game
   WIN_SCENS = [
     [:rock, :scissors],
     [:paper, :rock],
     [:scissors, :paper]
     ]
  # moves as [:rock, :scissors]

  def initialize
    @players = []
    @p1 = Player.new("p1")
    @players << @p1
    @p2 = ComputerPlayer.new("p2")
    @players << @p2
    play
  end

   def pick_winner
     if @p1.move == @p2.move
       puts "It's a tie!"
     elsif WIN_SCENS.include?([@p1.move, @p2.move])
       puts "p1 wins"
       @p1.win
     else
       puts "p2 wins"
       @p2.win
     end
   end

  def play_round
    return false unless @players.all? do |player|
      player.get_move
    end
     # return false unless @p1.get_move
     # return false unless @p2.get_move
     print_moves
     pick_winner
     print_scores
     puts
     puts "Let's play again"
     true
  end

 def play
   loop do
     break unless play_round
   end
   puts "Goodbye, thanks for playing"
 end

  def print_moves
    @players.each do |player|
      puts "#{player.name} played #{player.move}"
    end
    # puts "p1 player #{@p1.move}, p2 played #{@p2.move}."
  end

  def print_scores
    puts "Scores :"
    @players.each do |player|
     puts "#{player.name}  : #{player.score}"
   end
  end

end

 # p Player.new.get_move
 Game.new

# Make some improvements:
 # give the players names
 # set it up so you can pick a name
 # Game class keeps track of rounds

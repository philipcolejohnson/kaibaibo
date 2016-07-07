module Kaibaibo
class Game

  def initialize
  end

  def play
    assign_players
    quit = false

    until quit
      @player_one.gather_choice
      @player_two.gather_choice
      print_choices
      determine_winner

      puts "Play again?"
      choice = gets.chomp

      if choice.downcase != "yes"
        quit = true
      end
    end
  end

  def assign_players
    num_of_human_players = nil
    until num_of_human_players
      puts "How many human players?"
      num_of_human_players = gets.chomp.to_i
      if num_of_human_players == 1
        @player_one = Player.new(Player.get_name)
        @player_two = CompPlayer.new
      elsif num_of_human_players == 2
        @player_one = Player.new(Player.get_name)
        @player_two = Player.new(Player.get_name)
      end
    end
  end

  def determine_winner
    winners = {:rock => :scissors, :paper => :rock, :scissors => :paper}
    if winners[@player_one.status] == @player_two.status
      puts "#{@player_one.name} wins!"
    elsif winners[@player_two.status] == @player_one.status
      puts "#{@player_two.name} wins!"
    else
      puts "It was a tie!"
    end
  end

  def print_choices
    puts "#{@player_one.name} chose: #{@player_one.status.to_s}."
    puts "#{@player_two.name} chose: #{@player_two.status.to_s}."
  end
end
end
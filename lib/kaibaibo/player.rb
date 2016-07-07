module Kaibaibo
  class Player
  attr_reader :status, :name
  def initialize(name = "mister_no_name")
    @name = name
    @status = nil
  end

  def throw(choice)
    @status = choice
  end

  def self.get_name
    puts "What's your name?"
    gets.chomp
  end

  def gather_choice
    puts "#{@name}, enter your choice"
    choice = gets.strip
    case choice
    when "rock"
      throw(:rock)
    when "paper"
      throw(:paper)
    when "scissors"
      throw(:scissors)
    else
      puts "Incorrect input"
      gather_choice
    end
  end

end
end
module Kaibaibo
class CompPlayer < Player

  def initialize
    super("computer")
  end

  def gather_choice
    choices = [:rock, :paper, :scissors]
    throw(choices[rand(3)])
  end
end
end
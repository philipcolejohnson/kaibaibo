require "kaibaibo/version"
require "kaibaibo/game"
require "kaibaibo/player"
require "kaibaibo/compplayer"

module Kaibaibo

  def self.start
    Game.new.play
  end
  
end

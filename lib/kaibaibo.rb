require "kaibaibo/version"
require "lib/game"
require "lib/player"
require "lib/compplayer"

module Kaibaibo

  def self.start
    Game.new.play
  end
  
end

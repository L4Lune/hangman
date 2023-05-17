require_relative 'lib/player'
require_relative 'lib/game_board'
require_relative 'lib/game'
require 'pry-byebug'


binding.pry
game = Game.new

game.play
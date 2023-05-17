require_relative 'lib/player'
require_relative 'lib/game_board'
require 'pry-byebug'

binding.pry
game = GameBoard.new
player = Player.new
game.code_array=(game.code)
game.display_code_board(game.code_array)
player.guess=()
game.update_code_board(player.guess)
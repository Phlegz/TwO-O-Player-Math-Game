require './Player'
require './Question'
require './Game'

game = Game.new
game.start(Player.new,Player.new)

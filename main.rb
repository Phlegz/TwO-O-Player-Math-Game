require './Player'
require './Question'
require './Game'

game = Game.new

puts "player1: Whats your name?"
name1 = gets.chomp
puts "player2: Whats your name?"
name2 = gets.chomp

game.start(Player.new(name1),Player.new(name2))

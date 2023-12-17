require_relative 'player'
require_relative 'question'
require_relative 'score'
require_relative 'game'

#create players 
players = [Player.new('Player 1'), Player.new('Player 2')]

#create new game
game = Game.new(players)

#start game
game.start_game
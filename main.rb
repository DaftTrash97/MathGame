require_relative 'player'
require_relative 'question'
require_relative 'score'
require_relative 'game'

#game main logic here 

players = [Player.new('Player 1'), Player.new('Player 2')]
game = Game.new(players)
game.start_game
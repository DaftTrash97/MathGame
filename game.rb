class Game
    def initialize(players)
      @players = players
      @current_player = @players.first
      @question = Question.new
      @score = Score.new(@players)
    end
  
    def start_game
      # logic for starting the game
    end
  
    def game_loop
      # main game loop
    end
  
  end
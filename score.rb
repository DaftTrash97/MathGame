class Score
    attr_reader :scores
  
    def initialize(players)
      @scores = {}
      players.each { |player| @scores[player.name] = 0 }
    end
  
    def display_scores
      # logic for displaying scores
    end
  
  end
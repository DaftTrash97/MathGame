class Score
    attr_reader :scores
  
    def initialize(players)
      @scores = {}
      players.each { |player| @scores[player.name] = 0 }
    end
  
    def update_score(player_name, points)
      @scores[player_name] += points
    end
  
    def display_scores
      puts "Current Scores:"
      @scores.each { |player_name, score| puts "#{player_name}: #{score}" }
    end
  end
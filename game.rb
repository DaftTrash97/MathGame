class Game
    def initialize(players)
        @players = players
        @current_player = @players.first
        @question = Question.new
        @score = Score.new(@players)
        @players.each { |player| player.score = @score }
      end
  
    def start_game
      puts "Welcome to the Math Game!"
      puts "Each player will take turns answering math questions. Let's get started."
  
      game_loop
  
      end_game
    end
  
    private
  
    def game_over?
      @players.any? { |player| player.lives <= 0 }
    end
  
    def switch_player
      current_player_index = @players.index(@current_player)
      next_player_index = (current_player_index + 1) % @players.length
      @current_player = @players[next_player_index]
    end
  
    def end_game
      winner = determine_winner
  
      if winner
        puts "#{winner.name} wins the game with a score of #{winner.score.scores[winner.name]}!"
      else
        puts "No winner. The game ended without a clear winner."
      end
  
      puts "Final scores:"
      @score.display_scores
    end
  
    def determine_winner
      # Find the player with the highest score
      winners = @players.select { |player| player.lives > 0 }
  
      # If there is only one winner, return that player; otherwise, it's a tie
      winners.length == 1 ? winners.first : nil
    end
  
    def display_scores
      @score.display_scores
    end

    def game_loop
        loop do
          current_question = @question.generate_question
          @current_player.answer_question(current_question)
      
          # Display scores after each question
          @score.display_scores
      
          break if game_over?
      
          switch_player
        end
      end
  end

class Player
  attr_accessor :name, :lives, :score

  def initialize(name)
    @name = name
    @lives = 3
    @score = 0
  end

  def answer_question(question)
    puts "#{@name}, #{question}"

    # Get input
    user_answer = gets.chomp.to_i

    # Check answer 
    if user_answer == question.numbers.sum
      puts "Correct! #{@name} gains a point."
      @score.update_score(@name, 1)
    else
      puts "Incorrect! #{@name} loses a life."
      @lives -= 1
    end
  end
end
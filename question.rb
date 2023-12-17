class Question
    attr_reader :numbers
  
    def initialize
      @numbers = [rand(1..20), rand(1..20)]
    end
    
    def to_s
    "What is the sum of #{@numbers[0]} and #{@numbers[1]}?"
    end

    def generate_question
        Question.new
    end
  end
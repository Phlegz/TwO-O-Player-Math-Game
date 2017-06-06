class Question

  def initialize
    @num1 = 1 + rand(20)
    @num2 = 1 + rand(20)
    @result = @num1 + @num2
    @questionString  = "What is the answer to #{@num1} + #{@num2}? "
  end


  def print_to_console
    puts @questionString
  end

  def get_answer
    answer = gets.chomp.to_i
  end

  def validate_answer? userAnswer
     @result == userAnswer
  end

end

class Question

  attr_accessor :questionString

  def initialize
    @num1 = 1 + rand(20)
    @num2 = 1 + rand(20)
    @result = @num1 + @num2
    @questionString  = "What is the answer to #{@num1} + #{@num2}? "
  end

  def validate_answer? userAnswer
     @result == userAnswer
  end

end

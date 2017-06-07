class Player

  DEFAULT_LIVES = 3
  attr_accessor :lives, :name

  def initialize(name)
    @lives = DEFAULT_LIVES
    @name = name
  end

  def decrement
    @lives = @lives - 1
  end

  def alive?
    @lives > 0
  end

end

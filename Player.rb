class Player

  DEFAULT_LIVES = 3
  attr_accessor :lives

  def initialize
    @lives = DEFAULT_LIVES
  end

  def decrement(lives)
    @lives = lives - 1
  end

end

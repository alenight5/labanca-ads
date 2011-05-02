class Game
  attr_reader :score

  def roll(pins)
     @score ||= 0
     @score += pins
  end
end


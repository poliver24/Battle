class Player
  attr_reader :name, :hp

  DEFAULT_HIT_POINTS = 60

  def initialize(name, hp = DEFAULT_HIT_POINTS)
    @name = name
    @hp = hp
  end

  def receive_damage(amount)
    @hp -= amount
  end
end

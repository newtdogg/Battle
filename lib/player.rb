class Player
  attr_writer :hp
  attr_reader :name, :hp
  def initialize(name, hp = Battle::STARTING_HP)
    @name = name
    @hp = hp
  end

  def attack(other_player)
    other_player.hp -= 20
  end

end

class Game

attr_reader :players, :current_turn, :last_player

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_turn = player_1
    @last_player = player_2
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def switch_turns
    @current_turn = opponent(current_turn)
  end

  def opponent(the_player)
    @players.select { |player| player != the_player }.first
  end

  def other_player
    @last_player = opponent(@current_turn)
  end

  def player_dead
    players.select { |player| player.hp <= 0 }
  end

  def game_over?
    player_dead.any?
  end

  def loser
    player_dead.first
  end

  def winner
    opponent(loser)
  end
end

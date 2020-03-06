module AttackHelper
  def attack_redirect(game)
    Attack.run(game.opponent(game.current_turn))
    if game.game_over?
      redirect '/game-over'
    else
      redirect '/attack'
    end
  end
end
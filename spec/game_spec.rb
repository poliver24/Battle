require 'game'

describe Game do
  subject(:game) { described_class.create(patrick, computer) }
  subject(:patrick) { double :patrick }
  subject(:computer) { double :computer }

  describe '#player_1' do
    it 'retrieves the first player' do
      expect(game.player_1).to eq patrick
    end
  end

  describe '#player_2' do
    it 'retrieves the second player' do
      expect(game.player_2).to eq computer
    end
  end

  describe '#current_turn' do
    it 'starts as player 1' do
      expect(game.current_turn).to eq patrick
    end
  end

  describe '#switch_turns' do
  it 'switches the turn' do
    game.switch_turns
    expect(game.current_turn).to eq computer
  end
end
end

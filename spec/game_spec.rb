require 'game'

describe Game do
  subject(:game) { described_class.new(patrick, computer) }
  subject(:patrick) { double :player }
  subject(:computer) { double :player }

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

  describe '#attack' do
    it 'damages the player' do
      expect(computer).to receive(:receive_damage)
      game.attack(computer)
    end
  end
end

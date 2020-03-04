require 'player'

describe Player do
  subject(:patrick) { Player.new('Patrick') }
  subject(:computer) { Player.new('Computer') }

  describe '#name' do
    it 'returns the name' do
      expect(patrick.name).to eq 'Patrick'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(patrick.hp).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { computer.receive_damage }.to change { computer.hp }.by(-10)
    end
  end
 end

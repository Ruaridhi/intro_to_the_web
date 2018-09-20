require 'game.rb'

describe Game do
  subject(:game) { described_class.new }
  let(:player1) { double :player }
  let(:player2) { double :player }

  describe '#attack' do
    it 'launches an attack on a player' do
      expect(player2).to receive(:reduce_hp)
      game.attack(player2)
    end  
  end

end
require 'player.rb'

describe Player do

# let (:subject) { described_class.new('name') }
subject(:player) { described_class.new ('name')}
subject(:rory) { Player.new('Rory') }
subject(:freya) { Player.new('Freya') }


  it 'prints player name' do
    expect(player.name).to eq('name')
  end

  describe '#attack' do
    it 'launches an attack on a player' do
      expect(rory).to receive(:reduce_hp)
      freya.attack(rory)
    end  
  end

  describe '#reduce_hp' do
    it 'reduces attacked players hp' do
      expect{rory.reduce_hp}.to change{rory.hp}.by(-10)
    end
  end

end

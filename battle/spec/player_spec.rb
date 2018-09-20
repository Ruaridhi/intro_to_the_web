require 'player.rb'

describe Player do

subject(:player) { described_class.new ('name')}
let(:rory) { Player.new('Rory') }
let(:freya) { Player.new('Seb') }


  it 'prints player name' do
    expect(player.name).to eq('name')
  end

  describe '#reduce_hp' do
    it 'reduces attacked players hp' do
      expect{rory.reduce_hp}.to change{rory.hp}.by(-10)
    end
  end

end

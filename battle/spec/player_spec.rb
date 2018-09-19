require 'player.rb'

describe Player do

let (:subject) { described_class.new('name') }

  it 'prints player name' do
    expect(subject.name).to eq('name')
  end
end

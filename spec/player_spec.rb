require './lib/player'

describe Player do
  subject(:player1) { described_class.new("Dave") }
  subject(:player2) { described_class.new("John") }

  it "should return the players name" do
    expect(player1.name).to eq "Dave"
  end

  it "should reduce the other players hp when attacked" do
    player1.attack(player2)
    expect(player2.hp).to eq 80
  end
end

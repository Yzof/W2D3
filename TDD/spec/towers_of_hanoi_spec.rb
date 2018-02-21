require "rspec"
require "towers_of_hanoi"

RSpec.describe Towers do
  subject(:towers) { Towers.new }

  describe "#move" do
    before(:each) do
      towers.move([0, 1])
    end
    it "Raises MoveError when moving larger ring onto smaller ring" do
      expect { towers.move([0, 1]) }.to raise_error(MoveError)
    end

    it "Raises MoveError when moving ring outside of bounds" do
      expect { towers.move([0, 4]) }.to raise_error(MoveError)
    end

    it "Raises MoveError when moving ring onto same position" do
      expect { towers.move([1, 1]) }.to raise_error(MoveError)
    end

    it "Raises MoveError when moving empty space" do
      expect { towers.move([2, 1]) }.to raise_error(MoveError)
    end

    it "Should be able to move into empty tower" do
      expect(towers.positions).to eq([[3, 2], [1], []])
    end

    it "Should move smaller ring to non-empty tower" do
      towers.move([1, 0])
      expect(towers.positions).to eq([[3, 2, 1], [], []])
    end

  end

  describe '#won?' do

    let (:towers2) { Towers.new }
    it "Does not consider start position as won" do
      expect(towers2).not_to be_won
    end

    it "Properly evaluates non-won position" do
      expect(towers).not_to be_won
    end

    it "Properly evaluates won position" do
      towers.positions = [[], [3, 2, 1], []]
      expect(towers).to be_won
    end
  end
end

require "rspec"
require "deck"

RSpec.describe Deck do
  subject(:deck) { Deck.new }
  #let(:card) { double("card", :)}
  let(:hand) { double("hand")}

  describe '#initialize' do
    it "Creates 52 cards" do
      expect(deck.card_array.length).to be(52)
    end

    it "Creates proper cards" do
      expect(Card).to receive(:initialize).with(:hearts, 3)
    end

  end

  describe '#shuffle' do
    it "It shuffles card_array" do
      expect(deck.card_array).to receive(:shuffle)
    end

  end

  describe '#give_card' do
    it "Should return card object" do
      expect(deck.give_card.class).to eq(Card)
    end

    it "Should only give 1 card" do
      deck.give_card
      expect(deck.card_array.length).to be(51)
    end

  end


end

require "card"
require "rspec"

RSpec.describe Card do

  subject(:card) {Card.new(:hearts, 3)}

  describe '#initialize' do

    it "should have a suit" do
      expect(card.suit).to be(:hearts)
    end

    it "should have a value" do
      expect(card.value).to be(3)
    end

  end

  describe '#to_s' do

    it "should properly display card properties" do
      expect(card.to_s).to eq("3H")
    end

  end

  describe '#inspect' do

    it "should overide default inspect" do
      expect(card.inspect).to eq("3H")
    end
    it "calls #to_s" do
      expect(card).to receive(:to_s)
      card.inspect
    end


  end


end

class Deck
  attr_accessor :card_array

  SUIT = [:hearts, :clubs, :diamonds, :spades]
  VALUES = [*2..10] + []

  def initialize
    @card_array = []
    populate
  end

  def populate

  end

end

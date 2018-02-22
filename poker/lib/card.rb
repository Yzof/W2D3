class Card

  attr_reader :value, :suit

  SUITS = {hearts: "H", clubs: "C", diamonds: "D", spades: "S"}

  def initialize(suit, value)
    @suit = suit
    @value = value
  end

  def to_s
    "#{value}#{SUITS[self.suit]}"
  end

  def inspect
    self.to_s
  end

end

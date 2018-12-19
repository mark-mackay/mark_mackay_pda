class Card
  attr_reader :suit, :value, :name

  def initialize(suit, value)
    @suit = suit
    @value = value;
    @name = value.to_s + ' of ' + suit
  end
end

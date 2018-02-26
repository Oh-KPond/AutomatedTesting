
# card.rb

class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    valid_suits = [:hearts, :spades, :clubs, :diamonds]

    unless valid_suits.include?(suit)
      raise ArgumentError.new("Error: Can not make a card with new suit.")
    end

    unless value.between?(1,13)
      raise ArgumentError.new("Error: Can not make 0 cards or more than 13 cards.")
    end

    @value = value
    @suit = suit
  end

  def to_s
    return "#{value} of #{suit.to_s}"
  end

end


# card.rb

class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    @value = value
    @suit = suit

    if value == 0 || value > 13
      raise ArgumentError.new("Error: Can not make 0 cards or more than 13 cards.")
    elsif ![:hearts, :spades, :clubs, :diamonds].include?(suit)
      raise ArgumentError.new("Error: Can not make a card with new suit.")
    end
  end

  def to_s
    return "#{value} of #{suit.to_s}"
  end

end

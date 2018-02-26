
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
    face_cards = %W[Jack Queen King]
    face_card_adjuster = 11
    if value > 0 && value < 11
      return "#{value} of #{suit.to_s}"
    else
      return "#{face_cards[value - face_card_adjuster]} of #{suit.to_s}"
    end
    # if @value.between?(2,10)
    #   return "#{value} of #{suit.to_s}"
    # end
  end

end

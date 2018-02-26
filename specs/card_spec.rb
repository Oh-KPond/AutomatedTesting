
require_relative 'spec_helper'

describe Card do
  describe "You can create a Card instance" do

    it "Can be created" do
      [:hearts, :spades, :clubs, :diamonds].each do |suit|
        (1..13).each do |value|
          card = Card.new(value, suit)
          card.must_be_instance_of Card
        end
      end
    end

    it "Raises an ArgumentError for invalid parameters" do
      # To raise an ArgumentError in card.rb
      # raise ArgumentError.new
      proc {Card.new(0, :diamonds)}.must_raise ArgumentError
      proc {Card.new(14, :diamonds)}.must_raise ArgumentError
      proc {Card.new(13, :clovers)}.must_raise ArgumentError
    end
  end

  describe "Testing to_s" do

    it "to_s returns a readable String value logically for values 2-10" do
      # Test to ensure that to_s works for cards values 2-10
      # for example:  "2 of diamonds"
      # Given When Then
      # Arrange Act Assert
      hearts10 = Card.new(10, :hearts)
      diamonds5 = Card.new(5, :diamonds)
      # clubs12 = Card.new(12, :clubs)

      hearts10.to_s.must_equal "10 of hearts"
      diamonds5.to_s.must_equal "5 of diamonds"
    end

    it "to_s returns a readable String value for Ace, Jack, Queen, King" do
      # Test to ensure that to_s works for cards values 1, and 11-13
      # For example: "Queen of hearts"
      # Given When Then
      # Arrange Act Assert
      hearts1 = Card.new(1, :hearts)
      diamonds11 = Card.new(11, :diamonds)
      clubs12 = Card.new(12, :clubs)

      hearts1.to_s.must_equal "Ace of hearts"
      diamonds11.to_s.must_equal "Jack of diamonds"
      clubs12.to_s.must_equal "Queen of clubs"
    end
  end

  describe "Reader methods" do

    it "Can retrieve the value of the card using a `.value`." do
      # ensure that `.value works as expected`
    end

    it "Can retrieve the value of the card using a `.suit`." do
      # ensure that `.suit works as expected returning the symbol of the suit`

    end
  end

end

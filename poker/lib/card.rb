require 'byebug'

class Card

  attr_reader :suit, :value

  SUIT = [ :diamonds, :hearts, :spades, :clovers ].freeze

  VALUE = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10,:Jack, :Queen, :King, :Ace ].freeze

  def initialize(suit, value)
    @suit = suit
    @value = value
  end

  def valid_card?(suit, value)
  
    raise "invalid suit" if !SUIT.include?(suit)
    raise "invalid value" if !VALUE.include?(value)
        
  end 



end

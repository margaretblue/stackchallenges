require "deckofcards/version"

module Deckofcards
  class Card
    attr_accessor :suit, :number

    def initialize(suit, number)
      @suit = suit
      @number = number
      puts "#{number} of #{suit}"
    end

    def self.generate_new_deck
      deck = []
      suits  = ["♣", "♦", "♠", "♥"]
      numbers = (1..13).to_a
      suits.each do |suit|
        numbers.each do |number|
          deck << Card.new(suit, number)
        end
      end
      deck
    end

  end

  Card.generate_new_deck
  puts Card.generate_new_deck.length

end

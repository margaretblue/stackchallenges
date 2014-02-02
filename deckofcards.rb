class Card

  attr_accessor :suit_choices, :rank_choices

  def initialize(suit, number)
    #create array of available suits and ranking numbers
    @suit_choices = ["Hearts", "Clovers", "Diamonds", "Spades"]
    @rank_choices = (1..13).to_a
    #make them available as class variables
    @suit_choices = suit_choices
    @rank_choices = rank_choices
    puts "#{number} of #{suit}"
  end

  def display_full_deck
    deck_of_cards = []
    suit_choices.each do |suitname|
      rank_choices.each do |rank|
        card = Cards.new(suitname, rank)
        #card = "#{number} of #{suit}"
        deck_of_cards << card
      end
    end
    puts deck_of_cards

  end

Card.new.display_full_deck

end

require "minitest/autorun"
require "deckofcards"

describe "A deck of cards" do
  it "has 52 cards" do
    newdeck = Card.generate_new_deck

    newdeck.length.must_equal 52
  end
end

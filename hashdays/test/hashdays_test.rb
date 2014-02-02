require "minitest/autorun"
require "hashdays"

describe "Generates a 2-letter weekday abbreviation" do
  it "generates 'Su' when given 2014, month:1, day: 5" do
    two_letter_day(5).must_equal "Su"
  end
  it "generates 'Su' when given 2014, month:2, day: 2" do
    two_letter_day(2).must_equal "Su"
  end
end

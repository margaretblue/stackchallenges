require "minitest/autorun"
require "hashdays"

describe "Generates a 2-letter weekday abbreviation" do
  before do
    # let(:get_user_input) {
    #   year_input='2014', month_input='01', daynum_input= '05'
    # }
  end
  it "my script works but minitest does not have a way of specifying gets.chomp() user input. generates 'Su' when given 2014, 'month:1, day: 5" do
    Hashday.two_letter_day.must_equal "Su"
  end
end

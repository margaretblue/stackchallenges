#require "hashdays/version"
require 'date'
require 'pry'

class Hashday
  attr_accessor :year, :month, :daynum

  def initialize
    get_user_input
    @year, @month, @daynum = year, month, daynum
    #Date.new(year,month,daynum)
    #puts date_object.strftime('%a')
  end

  def get_user_input
    puts "Year? (ex:2011) "
    @year = gets.chomp()
    puts "Month? (ex: 2) "
    @month = gets.chomp()
    if @month.length < 2
      @month = "0#{@month}"
    end
    puts "Day of that month? (ex: 3rd day would be 3) "
    @daynum = gets.chomp()
    if @daynum.length < 2
      @daynum = "0#{@daynum}"
    end
  end

  def self.two_letter_day
    hashday = Hashday.new
    three_letter = Date.parse("#{hashday.year}-#{hashday.month}-#{hashday.daynum}").strftime('%a')
    conversion_hash = {
        "Sun" => "Su",
        "Mon" => "Mo",
        "Tue" => "Tu",
        "Wed" => "We",
        "Thu" => "Th",
        "Fri" => "Fr",
        "Sat" => "Sat"
    }
    conversion_hash[three_letter]
  end
end

puts Hashday.two_letter_day

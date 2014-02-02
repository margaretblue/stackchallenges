#require "hashdays/version"
require 'date'

class Hashday
  attr_accessor :year, :month, :daynum

  def initialize
    get_user_input
    @year = year
    @month = month
    @daynum = daynum
    puts "You picked year:#{year} month:#{month} daynum:#{daynum}"
    Date.new(year,month,daynum)
  end

  def get_user_input
    puts "Year? (ex:2011) "
    @year = gets.chomp().to_i
    puts "Month? (ex: 2) "
    @month = gets.chomp().to_i
    puts "Day of that month? (ex: 3rd day would be 3) "
    @daynum = gets.chomp.to_i
  end

  def self.two_letter_day(daynum)
    "Su"
  end
end

puts Hashday.new

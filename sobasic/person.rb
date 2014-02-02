#classes are templates for creating object instances
class Person
  attr_accessor :fname, :lname

  def initialize(fname, lname)
    @fname = fname
    @lname = lname
  end

  def to_s
    @lname + " " + @fname
  end

end

margaret = Person.new("Margaret", "Morris")

puts margaret

puts margaret.fname + " " + margaret.lname

puts margaret.to_s

puts margaret



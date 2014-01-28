# Write a method that takes one number as an argument.
# For multiples of three return “Fizz”, and for the multiples of five return “Buzz”.
# For numbers which are multiples of both three and five return “FizzBuzz”,
# and in all other cases return the number.

# class FizzBuzz
#   #determine if Fizz, Buzz or FizzBuzz is returned

  def fizz_or_buzz(number)
    if number % 3 == 0 && number % 5 == 0
      first_name = "FizzBuzz"
    elsif number % 5 == 0
      first_name = "Buzz"
    elsif number % 3 == 0
      first_name = "Fizz"
    else
      first_name = number
    end
    #first_name
    if number % 7 == 0
      first_name = first_name.to_s + "Sivv"
    end
    first_name
  end

# end

# Fizzbuzz.fizz_or_buzz(10)
# end

puts(fizz_or_buzz(15))
puts(fizz_or_buzz(60))
puts(fizz_or_buzz(9))
puts(fizz_or_buzz(1))
puts(fizz_or_buzz(5))
puts(fizz_or_buzz(7))
puts(fizz_or_buzz(21))
puts(fizz_or_buzz(105))

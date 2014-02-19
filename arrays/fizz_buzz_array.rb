#!/usr/bin/env ruby

@str_fizz = "Fizz"
@str_buzz = "Buzz"
numbers = (1..100).to_a

def fizz_buzzer(value)
  if value % 3 == 0 && value % 5 == 0
    @str_fizz + @str_buzz
  elsif value % 3 == 0
    @str_fizz
  elsif value % 5 == 0
    fizz_buzzer = @str_buzz
  else
    fizz_buzzer = value
  end
end

fizz_buzz_numbers = numbers.map{|number| fizz_buzzer(number) }
puts fizz_buzz_numbers

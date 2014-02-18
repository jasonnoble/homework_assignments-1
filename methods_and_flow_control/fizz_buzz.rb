#!/usr/bin/env ruby

str_fizz = "Fizz"
str_buzz = "Buzz"
count = 1

while count <= 100
  if count % 3 == 0 && count % 5 == 0
    puts str_fizz + str_buzz
  elsif count % 3 == 0
    puts str_fizz
  elsif count % 5 == 0
    puts str_buzz
  else
    puts count
  end
  count += 1
end

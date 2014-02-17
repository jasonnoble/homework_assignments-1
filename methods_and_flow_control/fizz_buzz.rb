#!/usr/bin/env ruby

str_Fizz = "Fizz"
str_Buzz = "Buzz"
count = 1

while count <= 100
  if count % 3 == 0 && count % 5 == 0
    puts str_Fizz+str_Buzz
  elsif count % 3 == 0
    puts str_Fizz
  elsif count % 5 == 0
    puts str_Buzz
  else
    puts count
  end
  count += 1
end

#!/usr/bin/env ruby

str_F = "Fizz"
str_B = "Buzz"
count =1

while count<=100
  if count%3==0 && count%5==0
    puts str_F+str_B
  elsif count%3==0
    puts str_F
  elsif count%5==0
    puts str_B
  else
    puts count
  end
  count += 1
end

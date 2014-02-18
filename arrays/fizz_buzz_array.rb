#!/usr/bin/env ruby

str_Fizz = "Fizz"
str_Buzz = "Buzz"
count = 0
numbers = (1..100).to_a
output = Array.new(100)

while count < 100
  if numbers[count] % 3 == 0 && numbers[count] % 5 == 0
    output[count] = str_Fizz + str_Buzz
  elsif numbers[count] % 3 == 0
    output[count] = str_Fizz
  elsif numbers[count] % 5 == 0
    output[count] = str_Buzz
  else
    output[count] = count+1
  end
  count += 1
end

output.each { |a| puts a}

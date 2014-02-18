#!/usr/bin/env ruby

str_practice = "this is a string to practice with"

puts str_practice
puts str_practice.capitalize
puts str_practice.upcase
puts str_practice.capitalize.gsub("string", "'string'")
puts "The string '" + str_practice + "' has " + str_practice.length.to_s + " characters"
puts str_practice.reverse
str_practice = str_practice.split
puts ((str_practice[5] + " ") * 3).strip + "!"

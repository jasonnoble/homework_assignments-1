#!/usr/bin/env ruby

str_Practice = "this is a string to practice with"

puts str_Practice
puts str_Practice.capitalize
puts str_Practice.upcase
puts str_Practice.capitalize.gsub("string", "'string'")
puts "The string '" + str_Practice + "' has " + str_Practice.length.to_s + " characters"
puts str_Practice.reverse
str_Practice = str_Practice.split
puts ((str_Practice[5] + " ") * 3).strip + "!"

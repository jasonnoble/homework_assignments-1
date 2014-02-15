#!/usr/bin/env ruby

strPrac = "this is a string to practice with"

puts strPrac
puts strPrac.capitalize
puts strPrac.upcase
puts strPrac.capitalize.gsub("string", "'string'")
puts "The string '"+strPrac+"' has "+strPrac.length.to_s+" characters"
puts strPrac.downcase.reverse
puts ("practice " * 3).strip+"!"

=begin
count =0
strNew = ""
while count<3
  strNew = strNew+"practice "
  count = count+1
end
strNew = strNew[0..-2]+"!"
puts strNew
=end


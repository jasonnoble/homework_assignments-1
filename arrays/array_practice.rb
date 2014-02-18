#!/usr/bin/env ruby

my_array = (1..10).to_a
my_array.each { |a| print a, "..." }
print "\n"
print "T-"
print my_array.reverse.join(", ")
print "...  BLASTOFF!\n"
puts "The last element is " + my_array.last.to_s
puts "The first element is " + my_array.first.to_s
puts "The third element is " + my_array.at(2).to_s
puts "The element with an index of " + my_array.index(my_array[3]).to_s + " is " + my_array.at(3).to_s
puts "The second from last element is " + my_array.at(-2).to_s
print "The first four elements are '"
print my_array[0..3].join(", ")
print "'\n"
print "If we delete " + my_array.delete_at(4).to_s + ", " + my_array.delete_at(4).to_s + " and " + my_array.delete_at(4).to_s + " from the array, we're left with ["
print my_array.join(",") + "]\n"
my_array.unshift("5")
puts "If we add 5 at the beginning of the array, we're left with [" + my_array.join(",").to_s + "]"
my_array.push("6")
puts "If we add 6 at the end of the array, we're left with [" + my_array.join(",").to_s + "]"
puts "Only the elements " + (my_array.select { |a| a.to_i > 8}).to_s + " are > 8."
puts "If we remove all the elements, then the length of the array is " + my_array.clear.length.to_s

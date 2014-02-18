#!/usr/bin/env ruby

def bottle_verse(x)
  if x == 2 then
    puts "2 bottles of beer on the wall, 2 bottles of beer."
    puts "Take one down and pass it around, 1 bottle of beer on the wall."
    puts
    puts "1 bottle of beer on the wall, 1 bottle of beer."
    puts "Take one down and pass it around, no more bottles of beer on the wall."
    puts
    puts "No more bottles of beer on the wall, no more bottles of beer."
    puts "Go to the store and buy some more, 99 bottles of beer on the wall."
  else
    puts "#{x} bottles of beer on the wall, #{x} bottles of beer."
    puts "Take one down and pass it around, #{x-1} bottles of beer on the wall."
    puts
    bottle_verse(x-1)
  end
end

bottle_verse(99)

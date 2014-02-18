#!/usr/bin/env ruby

def ask_question(question)
  print "#{question}"
  gets.chomp
end

response = Array.new(19)

response[0] = ask_question("Give me an adjective: " )
response[1] = ask_question("Give me another adjective: " )
response[2] = ask_question("Give me a noun: " )
response[3] = ask_question("Give me another noun: " )
response[4] = ask_question("Give me a plural noun: " )
response[5] = ask_question("Give me a game: " )
response[6] = ask_question("Give me another plural noun: " )
response[7] = ask_question("Give me a verb ending in /'ing/': " )
response[8] = ask_question("Give me another verb ending in /'ing/': " )
response[9] = ask_question("Give me another plural noun: " )
response[10] = ask_question("Give me another verb ending in /'ing/': " )
response[11] = ask_question("Give me another noun: " )
response[12] = ask_question("Give me a plant: " )
response[13] = ask_question("Give me a part of the body: " )
response[14] = ask_question("Give me a a place: " )
response[15] = ask_question("Give me another verb ending in /'ing/': " )
response[16] = ask_question("Give me another adjective: " )
response[17] = ask_question("Give me a number: " )
response[18] = ask_question("Give me another plural noun: " )

puts "A vacation is when you take a trip to some #{response[0]} place with your #{response[1]} family. Usually you go to some place that is near a/an #{response[2]} or up on a/an #{response[3]}. A good vacation place is one where you can ride #{response[4]} or play #{response[5]} or go hunting for #{response[6]}. I like to spend my time #{response[7]} or #{response[8]}.When parents go on a vacation, they spend their time eating three #{response[9]} a day, and fathers play golf, and mothers sit around #{response[10]}. Last summer, my little brother fell in a/an #{response[11]} and got poison #{response[12]} all over his #{response[13]}. My family is going to go to (the) #{response[14]}, and I will practice #{response[15]}. Parents need vacations more than kids because parents are always very #{response[16]} and because they have to work #{response[17]} hours every day all year making enough #{response[18]} to pay for the vacation."

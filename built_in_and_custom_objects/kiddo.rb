#!/usr/bin/env ruby

class Kiddo
  def initialize(name = "John Doe", topic ="", bedtime = "8")
    @given_name = name
    @interest = topic
    @bedtime = bedtime
 end

  def parental_request(order, complies)
      puts "Parent:  #{@given_name}, please " + order.downcase + "."
      if complies
        puts "#{@given_name}:  Okay, I will " + order.sub("your", "my").downcase + "."
        reward
      else
        puts "#{@given_name}:  I DON'T WANNA " + order.sub("your", "my").upcase + "!"
        reprimand
      end
  end

  def reward()
    puts "Parent:  Thank you #{@given_name}, you may watch a #{@interest} movie on Netflix later."
  end

  def reprimand()
    puts "Parent:  I wish you had listened #{@given_name}...now you must go to bed at #{@bedtime.to_i-1} o'clock."
  end
end

#Pretty self-explanatory...this output/dialogue is a sample use:
Ziggy = Kiddo.new("Ziggy", "dinosaur",9)
Rex = Kiddo.new("Rex", "Starwars")

Ziggy.parental_request("Do your homework", true)
Rex.parental_request("Wash your hands", true)
Rex.parental_request("Eat your dinner", false)
Ziggy.parental_request("Pick up your toys", false)

#!/usr/bin/env ruby

class Kiddo
  def initialize(name = "John Doe", topic = "", bedtime = "8")
    @given_name = name
    @first_name = (name.split(" "))[0]
    @interest = topic
    @bedtime = bedtime
 end

  def parental_request(order = "", complies = false)
      puts "Parent:  #{@given_name}, please " + order.downcase + "."
      if complies
        puts "#{@first_name}:  Okay, I will " + order.sub("your", "my").downcase + "."
        reward
      else
        puts "#{@first_name}:  I DON'T WANNA " + order.sub("your", "my").upcase + "!"
        reprimand
      end
  end

  def reward()
    puts "Parent:  Thank you #{@first_name}, you may watch a #{@interest} movie on Netflix later."
  end

  def reprimand()
    puts "Parent:  I wish you had listened #{@first_name}...now you must go to bed at #{@bedtime.to_i-1} o'clock."
  end
end

if __FILE__ == $0
  #Pretty self-explanatory...this output/dialogue is a sample use:
  ziggy = Kiddo.new("Ziggy Hardman Murphy", "dinosaur",9)
  rex = Kiddo.new("Rex Murphy Hardman", "Starwars")

  ziggy.parental_request("Do your homework", true)
  rex.parental_request("Wash your hands", true)
  rex.parental_request("Eat your dinner", false)
  ziggy.parental_request("Pick up your toys", false)
end

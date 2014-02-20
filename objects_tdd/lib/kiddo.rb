class Kiddo
  def initialize(name = "John Doe", topic = "", bedtime = "8")
    @given_name = name
    @first_name = (name.split(" "))[0]
    @interest = topic
    @bedtime = bedtime
  end

  def get_first_name()
    @first_name
  end

  def get_given_name()
    @given_name
  end

  def get_interest()
    @interest
  end

  def get_bedtime()
    @bedtime
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
    return "Parent:  Thank you #{@first_name}, you may watch a #{@interest} movie on Netflix later."
  end

  def reprimand()
    return "Parent:  I wish you had listened #{@first_name}...now you must go to bed at #{@bedtime.to_i-1} o'clock."
  end
end

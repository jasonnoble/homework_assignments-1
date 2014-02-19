#!/usr/bin/env ruby

class CashRegister
  def initialize
    @total = 0
  end

  def purchase(purchase_total)
    @total += purchase_total
    total
  end

  def total
    puts "%.2f" % @total
  end

  def pay(paid)
    @total -= paid
    if @total >= 0
      puts "Your new total is $#{"%.2f" % @total}"
    else
      puts "Your change is $#{"%.2f" % (@total * -1)}"
      @total = 0
    end
  end
end

if __FILE__ == $0
  #Example 1
  register = CashRegister.new
  register.total
  register.purchase(3.78)
  register.total
  register.pay(5.00)
  register.total
  puts

  #Example 2
  register = CashRegister.new
  register.total
  register.purchase(3.78)
  register.purchase(5.22)
  register.total
  register.pay(5.00)
  register.total
  register.pay(5.00)
  register.total
  puts
end

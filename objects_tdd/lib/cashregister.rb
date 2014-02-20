#!/usr/bin/env ruby

class CashRegister
  def initialize
    @total = 0
  end

  def purchase(purchase_total = 0)
    @total += purchase_total
    @total
  end

  def total
    @total
  end

  def pay(paid)
    @total -= paid
    if @total >= 0
      @total
    else
      @total *= -1
    end
  end
end

require 'rspec'
require './lib/cashregister'

describe CashRegister do
    describe ".total" do
      it "should be 0 on a new cashregister" do
        expect(subject.purchase()).to eq(0)
      end
    end

    describe ".purchase" do
      it "should add a number to the total" do
        subject.purchase(5)
        expect(subject.total).to eq(5)
      end

      it "should add multiple numbers to the total" do
        subject.purchase(5)
        subject.purchase(4.49)
        expect(subject.total).to eq(9.49)
      end
    end

    describe ".pay" do
      it "should subtract the number from the total" do
        subject.pay(5)
        expect(subject.total).to eq(5)
      end

      it "should subtract multiple numbers from the total" do
        subject.purchase(3.78)
        subject.purchase(5.22)
        subject.pay(5)
        expect(subject.total).to eq(4.00)
      end

      it "should have a positve value when it owes you money" do
        subject.purchase(3.78)
        subject.purchase(5.22)
        subject.pay(10)
        expect(subject.total).to eq(1)
      end
    end
end

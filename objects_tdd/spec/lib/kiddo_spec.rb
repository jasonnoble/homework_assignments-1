require 'rspec'
require './lib/kiddo'


describe 'Kiddo' do

  specify 'should create Kiddo with accessible interfaces' do
    k1 = Kiddo.new("Ziggy Hardman Murphy", "dinosaur",9)
    expect(k1.get_first_name).to eq("Ziggy")
    expect(k1.get_given_name).to eq("Ziggy Hardman Murphy")
    expect(k1.get_interest).to eq("dinosaur")
    expect(k1.get_bedtime).to eq(9)
  end

  specify 'should respond appropriately to default request (comply - reward with movie default)' do
    k1 = Kiddo.new
    expect(k1.parental_request("Do your homework", true)).to eq("Parent:  Thank you John, you may watch a  movie on Netflix later.")
  end

  specify 'should respond appropriately to request (comply - reward with interest movie defined)' do
    k1 = Kiddo.new
    expect(k1.parental_request("Do your homework", true)).to eq("Parent:  Thank you John, you may watch a  movie on Netflix later.")
  end

  specify 'should respond appropriately to request (disobey - decrement bedtime default)' do
    k1 = Kiddo.new("Rex Murphy Hardman", "Starwars")
    expect(k1.parental_request("Wash your hands", false)).to eq("Parent:  I wish you had listened Rex...now you must go to bed at 7 o'clock.")
  end

  specify 'should respond appropriately to request (disobey - decrement bedtime defined)' do
    k1 = Kiddo.new("Ziggy Hardman Murphy", "monkey",10)
    expect(k1.parental_request("Take out the trash", false)).to eq("Parent:  I wish you had listened Ziggy...now you must go to bed at 9 o'clock.")
  end

end

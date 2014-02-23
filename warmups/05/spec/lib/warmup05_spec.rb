require 'rspec'
require './lib/warmup05'

describe Warmup05 do

  it 'should be a warmup05' do
    expect(subject).to be_a(Warmup05)
  end

  it 'should return the correct character and number of occurances for most frequent consonant' do
    expect(subject.most_common_consonant).to eq("The most common consonant was R with 160985 occurances.")
  end

  it 'should return the correct character and number of occurances for most frequent vowel' do
    expect(subject.most_common_vowel).to eq("The most common vowel was E with 235331 occurances.")
  end

  it 'should return the correct length and number of occurances for most frequent word length' do
    expect(subject.most_common_length).to eq("There were 32403 occurances of 9 letter words.")
  end

end

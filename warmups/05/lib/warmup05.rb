class Warmup05
  def initialize
    @letter_count = Array.new(26,0)
    arr_lengths = Array.new
    line_length = 0

    File.open("/usr/share/dict/words").each_line do |word|
      #For each word in this line
      #'A'.ord  --> 65
      line_length = word.strip.length
      arr_lengths.push(line_length)
      str = word.split(//)

      str.each do |letter|
        letter_int = letter.upcase.ord - 65
        if letter_int != -55  #ignore blanks
          @letter_count[letter_int] += 1
        end
      end
    end

    @arr_vowel = Array.new(6,0)
    @arr_vowel_map = Array.new(6,0)

    tally_char('A',0)
    tally_char('E',1)
    tally_char('I',2)
    tally_char('O',3)
    tally_char('U',4)
    tally_char('Y',5)

    @str_cons_occur = @letter_count.max.to_s
    @str_cons = (@letter_count.index(@letter_count.max) + 65).chr
    puts most_common_consonant

    @str_vowel_occur = @arr_vowel.max.to_s
    @str_vowel = @arr_vowel_map[@arr_vowel.index(@arr_vowel.max)].to_s
    puts most_common_vowel

    freq = arr_lengths.inject(Hash.new(0)) { |key,value| key[value] += 1; key }
    @str_freq_occur = freq.sort_by {|key,value| value}.reverse[0].fetch(1).to_s
    @str_freq_length = freq.sort_by {|key,value| value}.reverse[0].fetch(0).to_s
    puts most_common_length
  end

  def tally_char(char, index)
    @arr_vowel_map[index] = char
    @arr_vowel[index] = @letter_count[char.ord - 65]
    #This eliminates this character being considered for highest frequency consonant
    @letter_count[char.ord - 65] = 0
  end

  def most_common_vowel
    "The most common vowel was " + @str_vowel + " with " + @str_vowel_occur + " occurances."
  end

  def most_common_consonant
    "The most common consonant was " + @str_cons + " with " + @str_cons_occur + " occurances."
  end

  def most_common_length
    "There were " + @str_freq_occur + " occurances of " + @str_freq_length + " letter words."
  end
end


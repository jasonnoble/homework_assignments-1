class Warmup05
  def initialize
    letter_count = Array.new(26,0)
    line_length = 0
    arr_lengths = Array.new

    File.open("/usr/share/dict/words").each_line do |word|
      #For each word in this line
      #'A'.ord  --> 65
      line_length = word.strip.length
      arr_lengths.push(line_length)
      str = word.split(//)

      str.each do |letter|
        letter_int = letter.upcase.ord - 65
        if letter_int != -55  #ignore blanks
          letter_count[letter_int] += 1
        end
      end
    end

    arr_vowel = Array.new(6,0)
    arr_vowel_map = Array.new(6,0)
    arr_vowel_map[0] = 'A'
    arr_vowel[0] = letter_count['A'.ord - 65]
    letter_count['A'.ord - 65] = 0
    arr_vowel_map[1] = 'E'
    arr_vowel[1] = letter_count['E'.ord - 65]
    letter_count['E'.ord - 65] = 0
    arr_vowel_map[2] = 'I'
    arr_vowel[2] = letter_count['I'.ord - 65]
    letter_count['I'.ord - 65] = 0
    arr_vowel_map[3] = 'O'
    arr_vowel[3] = letter_count['O'.ord - 65]
    letter_count['O'.ord - 65] = 0
    arr_vowel_map[4] = 'U'
    arr_vowel[4] = letter_count['U'.ord - 65]
    letter_count['U'.ord - 65] = 0
    arr_vowel_map[5] = 'Y'
    arr_vowel[5] = letter_count['Y'.ord - 65]
    letter_count['Y'.ord - 65] = 0

    @str_cons_occur = letter_count.max.to_s
    @str_cons = (letter_count.index(letter_count.max) + 65).chr
    puts most_common_consonant

    @str_vowel_occur = arr_vowel.max.to_s
    @str_vowel = arr_vowel_map[arr_vowel.index(arr_vowel.max)].to_s
    puts most_common_vowel

    freq = arr_lengths.inject(Hash.new(0)) { |key,value| key[value] += 1; key }
    @str_freq_occur = freq.sort_by {|key,value| value}.reverse[0].fetch(1).to_s
    @str_freq_length = freq.sort_by {|key,value| value}.reverse[0].fetch(0).to_s
    puts most_common_length
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

#x = Warmup05.new

require 'pry'

class PigLatinizer

  attr_accessor :phrase

  def is_vowel?(letter)
    vowels = ['a', 'e', 'i', 'o', 'u']
    vowels.include?(letter.downcase)
  end

  def piglatinize(word)
    split_word = word.split("")
    if !is_vowel?(split_word[0])
      while !is_vowel?(split_word[0]) do
          first_letter = split_word.shift
          split_word << first_letter
      end
      split_word << "ay"
    else
      split_word << "way"
    end
    split_word.join
  end

  def to_pig_latin(phrase)
    phrase.split(" ").map do |word|
      piglatinize(word)
    end.join(" ")
  end

end

w = PigLatinizer.new
puts w.to_pig_latin("Once upon a time Please")

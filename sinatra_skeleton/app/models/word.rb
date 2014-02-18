class Word < ActiveRecord::Base
  def self.anagram(user_word)
    all.each_with_object([]) do |word, anagrams|
      if word.word.chars.sort == user_word.chars.sort
        anagrams << word.word
      end
    end
  end
  # Remember to create a migration!
end

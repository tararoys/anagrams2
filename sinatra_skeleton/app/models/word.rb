class Word < ActiveRecord::Base
  def self.anagram(user_word)
    all.each_with_object([]) do |word, anagrams|
      if word.sorted_word == user_word
        anagrams << word.word
      end
    end
  end
end

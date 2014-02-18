class Word < ActiveRecord::Base
  def self.anagram(user_word)
    Word.where(sorted_word: user_word).map(&:word)
  end
end

class AddSortedWordToWords < ActiveRecord::Migration
  def change
    add_column :words, :sorted_word, :string
    add_index :words, :sorted_word
  end
end

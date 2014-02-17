
#text = File.open(APP_ROOT + "db/test_dictionary.txt")
 text = File.open(APP_ROOT.join("db", 'test_dictionary.txt'))
# text = File.open(APP_ROOT.join("db", 'test_dictionary.txt')).read
text.each_line do |line|
  Word.create(word: line.chomp)
end

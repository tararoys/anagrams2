
text = File.open(APP_ROOT.join("db", 'test_dictionary.txt')).read
text.each_line do |line|
  print line
end

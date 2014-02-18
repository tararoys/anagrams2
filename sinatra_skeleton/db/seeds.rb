CONN = ActiveRecord::Base.connection

inserts = []
File.readlines(APP_ROOT.join("db", 'words')).each do |word|
  inserts.push "('#{word.strip}', '#{word.strip.chars.sort.join}')"
end

sql = "INSERT INTO words (word, sorted_word) VALUES #{inserts.join(", ")}"
CONN.execute sql

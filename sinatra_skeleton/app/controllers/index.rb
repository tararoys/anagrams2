get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/' do
  @user_word = params[:word].chomp

  @array = []
  puts "doing post"
  Word.all.each do |word|
    puts word.word
    puts @user_word
    if word.word.chars.sort == @user_word.chars.sort
      puts "yay a match"
      @array << word.word
    end
  end

  erb :word_list

  # @array.inspect

end


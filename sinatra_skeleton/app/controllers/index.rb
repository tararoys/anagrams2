get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/' do
  @user_word = params[:word].chomp

  @array = Word.anagram(@user_word)

  erb :word_list
end


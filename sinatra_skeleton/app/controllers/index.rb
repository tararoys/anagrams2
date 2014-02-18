get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/' do
  @user_word = params[:word].chomp

  @array = []
  Word.all.each do |word|
    if word.word.chars.sort == @user_word.chars.sort
      @array << word.word
    end
  end

  erb :word_list
end


get '/' do
  erb :index
end

post '/anagram' do
  @word = Word.anagrams_for(params[:user_input])
  if @word.length > 0
    erb :anagram
  else 
    erb :foo
  end
end


# get '/:word' do
#   @word = Word.anagrams_for(params[:user_input])
#   erb :anagram
# end
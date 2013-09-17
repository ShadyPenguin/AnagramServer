get '/' do
  erb :index
end

post '/anagram' do
  @word = Word.anagrams_for(params[:user_input])
  erb :anagram
end


# get '/:word' do
#   @word = Word.anagrams_for(params[:user_input])
#   erb :anagram
# end
class Word < ActiveRecord::Base

  def self.anagrams_for(word)
     
    word_array1 = word.downcase.split(//).sort
    storage = Word.select {|word| word.word.downcase.split(//).sort == word_array1}
 
   storage
    # storage.each do |i|
    #   p i.word
    # end
  end
end

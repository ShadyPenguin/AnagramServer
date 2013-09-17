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

#Let's say you have a column called sorted_word for each word.
#sort_word = word.downcase.split(//).sort.join
#Word.where(sorted_word: sort_word)
#For extra speed, look up adding indexes in ActiveRecord.
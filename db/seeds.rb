# require_relative '../app/models/word.rb'
words = File.new("words.txt")

words.each_line do |line| 
  Word.create(:word => line.chomp)
end


def substrings(message, dictionary)
	words = message.downcase.split
	to_be_returned = Hash.new(0)
	dictionary.each do |word|
		words.each do |query|
			to_be_returned[word] += query.scan(word).length if query.include? word
		end
	end
	return to_be_returned
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
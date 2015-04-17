dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings text, dictionary

	frequencies = Hash.new(0)
	text.downcase!	
	dictionary.each { |entry|  
		count = text.scan(entry).length
		if count > 0 
			frequencies[entry] = count
		end
	}
	frequencies
end

# puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
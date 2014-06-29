def ceasar_cipher(statement, shift)
	words = statement.split
	alphabet = ('a'..'z').to_a + ('A'..'Z').to_a
	new_string = ""
	new_message = []
	words.each do |word|
		word.split("").each do |letter|
			position=alphabet.index(letter)
			new_position=position+shift
			if new_position>52
				new_position-=26 
			elsif new_position>26 && position<27
				new_position-=26
			end
			new_string += alphabet[new_position]
		end
		new_message << new_string
		new_string = ""
	end
	return new_message.join(" ")
end

puts "Input your secret message:"
message = gets.chomp

shift=27
while shift>26
	puts "Input the shift:"
	shift = gets.chomp.to_i
end

puts ceasar_cipher(message, shift)

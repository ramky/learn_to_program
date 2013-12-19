def improved_ask question
	while true
		print question
		reply = gets.chomp.downcase

		if reply == 'yes'
			return true
		elsif reply == 'no'
			return false
		else
			puts "Please answer 'yes' or 'no'."
		end
	end
end

improved_ask 'Do you like eating tacos?'
wets_bed = improved_ask 'Do you wet the bed?'
improved_ask 'Do you like eating sopapillas?'
puts 'Just a few more questions...'
improved_ask 'Do you like drinking horchata?'
improved_ask 'Do you like eating flautas?'
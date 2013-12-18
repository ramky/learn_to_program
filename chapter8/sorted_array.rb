puts "Enter words you'd like to sort.  To finish enter a blank line and press enter."

items = []
while true
	input = gets.chomp
	if input.length > 0
		items << input.downcase
	else
		break
	end
end

puts "Sorted words are #{items.sort.join(',')}"
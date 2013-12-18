bottles = 99

while bottles >= 0
	if bottles > 0
		puts "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer."
		puts "Take one down and pass it around, #{bottles - 1} bottles of beer on the wall."
	else
		puts "No more bottles of beer on the wall, no more bottles of beer."
		puts "Go to the store and buy some more, 99 bottles of beer on the wall."
	end
	puts 
	bottles = bottles - 1
end
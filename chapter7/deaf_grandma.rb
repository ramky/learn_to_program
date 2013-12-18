grandma_default_response = 'HUH?! SPEAK UP, SONNY!'
grandma_response = 'NO, NOT SINCE'

stop = true
count_byes = 0

while stop
	print "Me: "
	me = gets.chomp
	if me == 'BYE'
		count_byes = count_byes + 1
		if count_byes == 3
			stop = false
		end
	end
	if me == me.upcase
		puts grandma_response + ' ' + (1930 + rand(20)).to_s + '!'
	else
		puts grandma_default_response
	end
end

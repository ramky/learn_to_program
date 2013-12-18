puts "This will list all leap years in the range specified."
print "Input starting year:"
start_year = gets.chomp.to_i
print "Input ending year:"
end_year = gets.chomp.to_i

while start_year <= end_year
	if start_year % 4 == 0 && start_year % 100 != 0 || start_year % 400 == 0
		puts start_year
	end
	start_year += 1
end

def ask(message)
	print message
	input = ''
	while true
		input = gets.chomp
		if input !~ /\d{4}\/\d\d\/\d\d/
			puts "Invalid date, Try again"
		else
			break
		end
	end
	input
end

SECONDS_IN_YEAR = 60 * 60 *	 24 * 365
bday = ask("What is your birthdate (YYYY/MM/DD)? ")
(year,month,day) = bday.split("/")
birth_time = Time.local(year, month, day)
age = ((Time.new - birth_time) / SECONDS_IN_YEAR).to_i

age.times do |i|
	puts "#{i+1}) spank!"
end
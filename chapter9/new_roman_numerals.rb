def ask question
	while true
		print question + " "
		number = gets.chomp.to_i
		if number > 0 && number <= 3000
			return number
		else
			puts "Please enter a number between 1 and 3000."
		end
	end
end

def convert_new_roman number
	debug = false
	roman_string = ''
	roman_letters = ['M', 'CM', 'D', 'CD', 'C', 'XC', 'L', 'XL', 'X', 'IX', 'V', 'IV', 'I']
	while number > 0
		if number >= 1000 
			roman_string = roman_string + roman_letters[0]*(number/1000)
			number = number % 1000
		elsif number >= 900 
			roman_string = roman_string + roman_letters[1]
			number = number - 900
		elsif number >= 500
			roman_string = roman_string + roman_letters[2]
			number = number % 500
		elsif number >= 400 
			roman_string = roman_string + roman_letters[3]
			number = number - 400	
		elsif number >= 100
			roman_string = roman_string + roman_letters[4]*(number/100)
			number = number % 100
		elsif number >= 90 
			roman_string = roman_string + roman_letters[5]
			number = number - 90
		elsif number >= 50
			roman_string = roman_string + roman_letters[6]*(number/50)
			number = number % 50
		elsif number >= 40 
			roman_string = roman_string + roman_letters[7]
			number = number - 40
		elsif number >= 10
			roman_string = roman_string + roman_letters[8]*(number/10)
			number = number % 10
		elsif number >= 9 
			roman_string = roman_string + roman_letters[9]
			number = number - 9
		elsif number >= 5
			roman_string = roman_string + roman_letters[10]
			number = number % 5	
		elsif number == 4 
			roman_string = roman_string + roman_letters[11]
			number = 0
		else
			roman_string = roman_string + roman_letters[12]*(number)
			number = 0
		end
		puts "number is #{number}" if debug
	end
	roman_string
end

puts "This prints new school roman numerals from 1 to 3000."
number = ask "What number do you want to convert to new school roman numeral?"
puts "New school roman numeral for #{number} is #{convert_new_roman number}."
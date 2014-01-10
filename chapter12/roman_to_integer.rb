require 'pry'
ROMAN_TO_INTEGER = {
	'M'  => 1000, 
	'CM' => 900,
	'D'  => 500,
	'CD' => 400, 
	'C'  => 100, 
	'XC' => 90, 
	'L'  => 50, 
	'XL' => 40,
	'X'  => 10, 
	'IX' => 9, 
	'V'  => 5, 
	'IV' => 4, 
	'I'  => 1
}

def ask question
	print question + " "
	roman = gets.upcase.chomp
end

def valid?(roman)
	return true
end

def roman_to_integer(roman)
	return unless valid? roman

	sum = 0
	index = 0
	while index < roman.length
		if %w[CM CD XC XL IX IV].include?roman.slice(index, 2)
			sum += ROMAN_TO_INTEGER[roman.slice(index, 2)]
			index += 2
		elsif %w[M D C L X V I].include?roman.slice(index, 1)
			sum += ROMAN_TO_INTEGER[roman[index]]
			index += 1
		else
			puts "invalid roman literal found #{roman[index]}, quitting ..."
			exit
		end
	end
	return sum
end

roman = ask "Enter a roman numeral "
puts "Integer equivalent value is #{roman_to_integer(roman)}"
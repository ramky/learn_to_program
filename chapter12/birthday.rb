filename = 'birthday.txt'
birthday_str = File.read(filename)

birthday_hash = {}
birthday_str.each_line do |line|
	array = line.split(',', 2)
	birthday_hash[array[0]] = array[1]
end

puts "Whose bday do you want? "
person = gets.chomp
puts "Birthday is #{birthday_hash[person]}"
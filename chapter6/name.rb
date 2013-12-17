puts 'Hi, what\'s your first name?'
first_name = gets.chomp
puts 'Nice first name! Now, what\'s your middle name?'
middle_name = gets.chomp
puts 'Excellent middle name! Now,  what\'s your last name?'
last_name = gets.chomp

name_length = first_name.length + middle_name.length + last_name.length

puts 'Your full name has ' + name_length.to_s + ' characters.' 

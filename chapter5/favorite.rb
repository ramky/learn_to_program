puts 'What\'s your favorite number?'
fav = gets.chomp.to_i
fav = fav + 1
puts ('Nice, but have you considered ' + 
                fav.to_s + ' as an even better one?')
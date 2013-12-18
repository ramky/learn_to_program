line_width = 70

chapter1_numbers = [1, 2, 3, 4]
chapter1_topics  = ['Getting Started', 'Numbers', 'Letters', 'Functions']
chapter1_pages   = [1, 9, 13, 129]

puts 
puts "Table of Contents".center(line_width)
puts

page_str = "page "

4.times do |i|
	puts ("Chapter " + chapter1_numbers[i].to_s + ":  " + chapter1_topics[i]).ljust(line_width/2) + page_str.rjust(line_width/2 - page_str.length) + chapter1_pages[i].to_s
end

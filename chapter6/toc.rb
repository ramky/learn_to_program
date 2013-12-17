line_width = 70

chapter1_number = 1
chapter1_topic  = 'Getting Started'
chapter1_page   = 1

chapter2_number = 2
chapter2_topic  = 'Numbers'
chapter2_page   = 9

chapter3_number = 3
chapter3_topic  = 'Letters'
chapter3_page   = 13

chapter4_number = 3
chapter4_topic  = 'Functions'
chapter4_page   = 129

puts 
puts "Table of Contents".center(line_width)
puts

page_str = "page "

puts ("Chapter " + chapter1_number.to_s + ":  " + chapter1_topic).ljust(line_width/2) + page_str.rjust(line_width/2 - page_str.length) + chapter1_page.to_s

puts ("Chapter " + chapter2_number.to_s + ":  " + chapter2_topic).ljust(line_width/2) + page_str.rjust(line_width/2 - page_str.length) + chapter2_page.to_s

puts ("Chapter " + chapter3_number.to_s + ":  " + chapter3_topic).ljust(line_width/2) + page_str.rjust(line_width/2 - page_str.length) + chapter3_page.to_s

puts ("Chapter " + chapter4_number.to_s + ":  " + chapter4_topic).ljust(line_width/2) + page_str.rjust(line_width/2 - page_str.length) + chapter4_page.to_s
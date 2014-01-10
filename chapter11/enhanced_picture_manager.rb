# Picture manager

puts 'What is source directory path?'
source = gets.chomp

puts 'What is destination directory path?'
destination = gets.chomp

Dir.chdir destination
pic_names = Dir[source + '/**/*.jpg']
puts "pic names are " + pic_names.join(',')

puts 'What would you like to call this batch?'
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files: "

pic_number = 1

pic_names.each do |name|
  print '.'
  new_name = if pic_number < 10
               "#{batch_name}0#{pic_number}.jpg"
             else
               "#{batch_name}#{pic_number}.jpg"
             end
  if File.exists? new_name
    puts
    puts "A file with name [#{new_name}] already exists, quitting..."
    exit
  end
  File.rename name, new_name
  pic_number = pic_number + 1
end
puts

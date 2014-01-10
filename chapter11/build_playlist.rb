def my_shuffle words, shuffle_words
  if words.length == 0
    return shuffle_words
  else
    shuffle_word_location = rand(words.length)
    shuffle_words << words[shuffle_word_location]

    new_words = Array.new
    words.each_with_index do |word, i|
      new_words << word unless i == shuffle_word_location
    end

    return my_shuffle new_words, shuffle_words
  end
end

def get_path_to_music
  print "Enter absolute path to music library: "
  path = gets.chomp
  return path
end

def get_albums
  albums = []
  while true
    puts "Enter the albums to include in the playlist. Press enter to finish."
    album = gets.chomp
    if album == ''
      break
    else
      albums << album
    end
  end
  return albums  
end

def create_music_list(path, albums)
  list = []
  albums.each do |album|
    list << Dir[path + "/" + album + "/*.mp3"]
  end
  list.flatten
end

def write_to_file(shuffled_list,filename)
  File.open filename, 'w' do |f|
    shuffled_list.each do |song|
      f.write song + "\n"
    end
  end  
  puts "Wrote playlist file - #{filename}"
end

path = get_path_to_music
albums = get_albums
music_list = create_music_list( path, albums )
write_to_file(my_shuffle(music_list,[]), path+"/my_playlist.m3u")


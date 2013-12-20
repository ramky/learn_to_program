def ask prompt
  array_of_words = Array.new
  puts prompt
  while true
    word = gets.chomp
    if word.length == 0
      break
    else
      array_of_words << word
    end
  end
  array_of_words
end

def recursive_shuffle words, shuffle_words
  if words.length == 0
    return shuffle_words
  else
    shuffle_word_location = rand(words.length)
    shuffle_words << words[shuffle_word_location]

    new_words = Array.new
    words.each_with_index do |word, i|
      new_words << word unless i == shuffle_word_location
    end

    return recursive_shuffle new_words, shuffle_words
  end
end

puts "This shuffles the words (using recursion) that were input from the terminal."
words = ask "Enter a few words, input blank line and enter to end it."
puts "Shuffle list is #{recursive_shuffle(words, []).join(', ')}"

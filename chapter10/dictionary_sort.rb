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

def dictionary_sort words, sorted_words
  if words.length == 0
    return sorted_words
  else
    # Get the smallest word and the location
    smallest_word = words[0]
    smallest_word_location = 0
    words.each_with_index do |word, i|
      if word.downcase < smallest_word.downcase
        smallest_word = word
        smallest_word_location = i
      end
    end

    # Create the sorted list
    sorted_words << smallest_word

    # Now create the new words array without the smallest word
    new_words = Array.new
    words.each_with_index do |word, i|
      new_words << word unless i == smallest_word_location
    end

    return dictionary_sort new_words, sorted_words
  end
end

puts "This sorts the words (using recursion) that were input from the terminal."
words = ask "Enter a few words, input blank line and enter to end it."
puts "Sorted list is #{dictionary_sort(words, []).join(', ')}"

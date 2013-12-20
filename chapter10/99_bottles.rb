def ask question
  while true
    print question + " "
    number = gets.chomp.to_i
    if number > 0 && number <= 1500
      return number
    else
      puts "Please enter a number between 1 and 1500."
    end
  end
end

def english_number number
  num_string = ''
  if number < 0
    num_string =  'Please enter a number that isn\'t negative.'
  end
  if number == 0
    num_string = 'zero'
  else
    ones_place = ['one','two','three','four','five','six','seven','eight','nine']
    tens_place = ['ten','twenty','thirty','forty','fifty','sixty','seventy','eighty','ninety']
    teenagers  = ['eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen', 'eighteen', 'nineteen']

    current_number = number

    current_write = current_number/1000
    current_number = current_number - current_write*1000
    if current_write > 0
      millions = english_number current_write
      num_string = num_string + millions + ' thousand'
      if current_number > 0
        num_string = num_string + ' '
      end
    end

    current_write  = current_number/100
    current_number = current_number - current_write*100
    if current_write > 0
      hundreds = english_number current_write
      num_string = num_string + hundreds + ' hundred'
      if current_number > 0
        num_string = num_string + ' '
      end
    end

    current_write = current_number/10
    current_number = current_number - current_write*10
    if current_write > 0
      if ((current_write  == 1) && (current_number > 0))
        num_string = num_string + teenagers[current_number - 1]
        current_number = 0
      else
        num_string = num_string + tens_place[current_write - 1]
      end
      if current_number > 0
        num_string = num_string + ' '
      end
    end

    current_write = current_number
    current_number = 0

    if current_write > 0
      num_string = num_string + ones_place[current_write - 1]
    end

    num_string
  end
end

bottles = ask "Please enter the # of bottles (1-1500) to play '99 bottles of bear' with."

while bottles >= 0
  if bottles > 0
    puts "#{english_number(bottles).capitalize} bottles of beer on the wall, #{english_number(bottles)} bottles of beer."
    puts "Take one down and pass it around, #{english_number(bottles - 1)} bottles of beer on the wall."
  else
    puts "No more bottles of beer on the wall, no more bottles of beer."
    puts "Go to the store and buy some more, #{english_number(99)} bottles of beer on the wall."
  end
  puts 
  bottles = bottles - 1
end
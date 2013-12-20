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

    current_write = current_number/1000000000000
    current_number = current_number - current_write*1000000000000
    if current_write > 0
      trillions = english_number current_write
      num_string = num_string + trillions + ' trillion'
      if current_number > 0
        num_string = num_string + ' '
      end
    end 

    current_write = current_number/1000000000
    current_number = current_number - current_write*1000000000
    if current_write > 0
      billions = english_number current_write
      num_string = num_string + billions + ' billion'
      if current_number > 0
        num_string = num_string + ' '
      end
    end    

    current_write = current_number/1000000
    current_number = current_number - current_write*1000000
    if current_write > 0
      millions = english_number current_write
      num_string = num_string + millions + ' million'
      if current_number > 0
        num_string = num_string + ' '
      end
    end

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

puts english_number(  0)
puts english_number(  9)
puts english_number( 10)
puts english_number( 11)
puts english_number( 17)
puts english_number( 32)
puts english_number( 88)
puts english_number( 99)
puts english_number(100)
puts english_number(101)
puts english_number(234)
puts english_number(3211)
puts english_number(999999)
puts english_number(1038766)
puts english_number(10000000000)
puts english_number(1000000000000000)
INTEGER = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
ROMAN = ['M', 'CM', 'D', 'CD', 'C', 'XC', 'L', 'XL', 'X', 'IX', 'V', 'IV','I']

class Integer
  def to_roman
    return roman_convert(self, '')
  end

  def roman_convert n, roman
    if n == 0
      return roman
    else
      for j in 0..INTEGER.length
        if n >= INTEGER[j]
          return roman_convert(n - INTEGER[j], roman << ROMAN[j])
        end
      end
    end
  end

  def factorial
    if self < 0
      return 'No factorial for negative numbers!'
    elsif self <= 1
      return 1
    else
      return self * (self - 1).factorial
    end
  end  
end

puts "Integer to Roman:"
puts 59.to_roman
puts 151.to_roman
puts 1991.to_roman
puts 4999.to_roman
puts

puts "Factorial:"
puts 5.factorial
puts 11.factorial

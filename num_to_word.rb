#Take a number from 1 - 1000 and convert it to an english word string representation.

def num_to_word(number)
    ones = [nil, "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    
    teens = ["ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "ninteen"]
    
    tens = [nil, nil, "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
   
   hundreds = [nil, "one hundred", "two hundred", "three hundred", "four hundred", "five hundred", "six hundred", "seven hundred", "eight hundred", "nine hundred"]

   case 
   
    when number.between?(0, 9) 
       return ones[number]

    when number.between?(10, 19)
        temp_teens = number - 10
        return teens[temp_teens]
        
    when number.between?(20, 99)
        temp_tens = number / 10
        temp_ones = number % 10
        
        return "#{tens[temp_tens]} #{ones[temp_ones]}"
        
    when number.between?(100, 999)
        temp_hunds = number / 100
        temp_tens = (number - (temp_hunds * 100)) / 10
        temp_ones = (number % 10)
        
        return "#{hundreds[temp_hunds]} and #{tens[temp_tens]} #{ones[temp_ones]}"

    when number === 1000
        return "one thousand"
    end
    
end


answer = nil # initialize the variable so you can invoke methods on it

puts "Give me a number!"
until answer.is_a?(Fixnum) && answer <= 1000 do
  puts "Please enter a number between 1 and 1000."
  answer = Integer(gets) rescue nil
end

if answer <= 1000
    puts "In English, that's #{num_to_word(answer)}."
end

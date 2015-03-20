# Ninety-nine Bottles of Beer on the Wall.” Using english_number and your old program here, write out the lyrics to this song the right way this time. Punish your computer: have it start at 9999. (Don’t pick a number too large, though, because writing all of that to the screen takes your computer quite a while. A hundred thousand bottles of beer takes some time; and if you pick a million, you’ll be punishing yourself as well!) 

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


def bottles_of_beer(num)

	if num.size == 0
		puts "Aren't you thirsty?"
	else 
		num.reverse_each do |n|
		# reverse.each lists the items in the array from last to first, but does not sort them. 

			if n === 1 
				puts "\n#{num_to_word(n).capitalize} bottle of beer on the wall. #{num_to_word(n).capitalize} bottle of beer. Take one down, pass is around, no more bottles of beer on the wall."
			else 
				puts "\n#{num_to_word(n).capitalize} bottles of beer on the wall. #{num_to_word(n).capitalize} bottles of beer. Take one down, pass is around, #{num_to_word(n.to_i - 1)} bottles of beer on the wall."
			end
		end

		puts "\nDrunk much?"
	
	end
end



answer = nil # initialize the variable so you can invoke methods on it

until answer.is_a?(Fixnum) && answer < 101 do
  puts "How much do you want to drink? Please enter a number between 1 and 100."
  answer = Integer(gets) rescue nil
end

bottles = (1..answer).to_a

bottles_of_beer(bottles)
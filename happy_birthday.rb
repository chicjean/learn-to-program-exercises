#Happy birthday! Ask what year a person was born in, then the month, and then the day. Figure out how old they are, and give them a big SPANK! for each birthday they have had.

def month_to_num(month)
	case month
		when 1
			return "January"
		when 2
			return "February"
		when 3
			return "March"
		when 4
			return "April"
		when 5
			return "May"
		when 6
			return "June"
		when 7 
			return "July"
		when 8
			return "August"
		when 9
			return "September" 
		when 10 
			return "October"
		when 11
			return "November"
		when 12
			return "December"
	end
end

while true
	puts "What year were you born? (YYYY)"

	year = gets.chomp.to_i

	if (year.to_s.size == 4) && (year.to_s < Time.now.strftime("%Y")) 
		break 
	end 
end 

while true
	puts "What month were you born? (Please enter a number between 1 and 12)"

	month = gets.chomp.to_i

	if month.between?(1, 12)
		break
	end

end

while true
	puts "What day were you born?"

	day = gets.chomp.to_i

	if day.between?(1, 31)
		break
	end 
end

your_birthday = Time.local(year, month, day)
today = Time.now

your_age = ((today - your_birthday) / 31536000).to_i

puts "Your birthday is #{month_to_num(month)} #{day}, #{year}... You are #{your_age} years old.\n"

puts "Birthday Spank!\n" * your_age


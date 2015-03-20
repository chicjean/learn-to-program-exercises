# # Building and sorting an array. Write the program we talked about at the beginning of this chapter, one that asks us to type as many words as we want (one word per line, continuing until we just press Enter on an empty line) and then repeats the words back to us in alphabetical order. Make sure to test your program thoroughly; for example, does hitting Enter on an empty line always exit your program? Even on the first line? And the second? Hint: There’s a lovely array method that will give you a sorted version of an array: sort . Use it!

#MY ANSWER

sort_this_array = []

input = nil

until input == '' &&  sort_this_array.size >= 1
	puts "Give me a list of words. Separate each word by hitting the 'Enter' key. When you're done, hit 'Enter' again."

	input = gets.chomp.capitalize.to_s
	sort_this_array << input
end

sorted_array = sort_this_array.sort!

puts "Your sorted list is:"
sorted_array.each do |a|
	puts a
end



#THEIR ANSWER

puts 'Give me some words, and I will sort them:'
words = [] 
while true 
  word = gets.chomp 
  break if word.empty?
  words << word 
end 
 
puts 'Sweet! Here they are, sorted:'
puts words.sort
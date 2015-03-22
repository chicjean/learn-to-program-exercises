#Shuffle. Now that you’ve finished your new sorting algorithm, how about the opposite? Write a shuffle method that takes an array and returns a totally shuffled version. 

def shuffle(list_to_shuffle)

	puts "\nUnshuffled List:"
	print list_to_shuffle

	puts "\nShuffled List:"
	shuffled_array = []

	until list_to_shuffle.size === 0
		rand_index = rand(list_to_shuffle.size)

		shuffled_array << list_to_shuffle[rand_index]

		list_to_shuffle.delete(list_to_shuffle[rand_index])
	end

	shuffled_array

end

my_array = ["apple", "banana", "cat", "dog", "elephant", "fish", "gorilla"]

print shuffle(my_array)
# “One billion seconds! Find out the exact second you were born (if you can). Figure out when you will turn (or perhaps when you did turn) one billion seconds old. Then go mark your calendar.”

birthday = Time.gm(1986, 9, 22, 9)

puts birthday + 1000000000

# Or refactored, it looks like this: 

puts Time.gm(1986, 9, 22, 9) + 1000000000

#Or from the book, the answer is: 

puts Time.gm(1986, 9, 22, 9) + 10**9
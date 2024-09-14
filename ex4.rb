# 4.3. OTHER DATA STRUCTURES
# 1. Assign a to be to the result of splitting the string “A man, a plan, a canal,
# Panama” on comma-space.
# 2. Assign s to the string resulting from joining a on nothing.
# 3. Split s on whitespace and rejoin on nothing. Use the palindrome test
# from Listing 4.10 to conﬁrm that the resulting string s is not a palin-
# drome by the current deﬁnition. Using the downcase method, show that
# s.downcase is a palindrome.
# 4. What is the result of selecting element 7 from the range of letters a
# through z? What about the same range reversed? Hint: In both cases
# you will have to convert the range to an array.

# 1
a = "A man, a plan, a canal, Panama".split(', ')
puts a
puts ("\n\n")

# 2
s = a.join
puts s
puts ("\n\n")
# => "A mana plana canalPanama"

# 3
puts (s.split)
s = s.split.join
# => "AmanaplanacanalPanama"
puts s  
# Palindrome test
puts "It's a palindrome!" if s == s.reverse
# No output (not a palindrome with case sensitivity)

# Using downcase
puts "It's a palindrome!" if s.downcase == s.downcase.reverse
# Output: "It's a palindrome!"

# 4
puts ("\n\n 4") 
range = ('a'..'z').to_a
element_7 = range[7]
puts element_7
# => "h"

# The same range reversed
reversed_range = range.reverse
puts reversed_range
element_7_reversed = reversed_range[7]
# puts element_7_reversed
# => "s"
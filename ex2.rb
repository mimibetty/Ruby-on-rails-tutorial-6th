# 1. What is the length of the string “racecar”?
# 2. Conﬁrm using the reverse method that the string in the previous exer-
# cise is the same when its letters are reversed.
# 3. Assign the string “racecar” to the variable s. Conﬁrm using the compar-
# ison operator == that s and s.reverse are equal.
# 4. What is the result of running the code shown in Listing 4.9? How does it
# change if you reassign the variable s to the string “onomatopoeia”? Hint:
# Use up-arrow to retrieve and edit previous commands

puts "racecar".length
s = "racecar"
puts s == s.reverse
puts s
s = "onomatopoeia"
puts s == s.reverse
s = "racecar"
puts "It's a palindrome!" if s == s.reverse
# Output: It's a palindrome!
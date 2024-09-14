# 4.2. STRINGS AND METHODS
# 1. By replacing FILL_IN with the appropriate comparison test shown in
# Listing 4.10, deﬁne a method for testing palindromes. Hint: Use the
# comparison shown in Listing 4.9.
# 2. By running your palindrome tester on “racecar” and “onomatopoeia”,
# conﬁrm that the ﬁrst is a palindrome and the second isn’t.
# 3. By calling the nil? method on palindrome_tester("racecar"),
# conﬁrm that its return value is nil (i.e., calling nil? on the result of the
# method should return true). This is because the code in Listing 4.10
# prints its responses instead of returning them.

def palindrome_tester(s)
  if s == s.reverse
    puts "It's a palindrome!"
  else
    puts "It's not a palindrome."
  end
end

puts palindrome_tester("racecar")
puts palindrome_tester("onomatopoeia")
# puts palindrome_tester()
puts palindrome_tester("racecar").nil?
puts palindrome_tester("onomatopoeia").nil?
puts palindrome_tester("racecar").nil?



puts 
puts
def palindrome_tester2(s)
  if s == s.reverse
    return "It's a palindrome!"
  else
    return "It's not a palindrome."
  end
end

puts palindrome_tester2("racecar")
puts palindrome_tester2("onomatopoeia")
# puts palindrome_tester2()
puts palindrome_tester2("racecar").nil?
puts palindrome_tester2("onomatopoeia").nil?
puts palindrome_tester2("racecar").nil?

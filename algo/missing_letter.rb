# Return the missing letter from a given range of letters passed into the method
# as a string. If there is no missing letter, the method should return nil.
# bonus: returns a string of all missing letters as a string. ex: find_missing_letter("ace") would return "bd", write your own test.



def find_missing_letter(range)
  #create an empty return string and add each missing letter to it, if they exist, otherwise return nil
  returnstring = ''
  (range[0]..range[-1]).each {|letter| returnstring+=letter if !range.include?(letter)}
  return (returnstring if returnstring.length > 0)||(nil)
end

puts "Jon's test to find missing letter"
puts

result = find_missing_letter("abdfghjlmnprstv")

puts "your method returned:"
puts result
puts
#Transform the test format below into an inline statement
puts (("PASS!" if result == "ceikoqu")||("F"))||(("PASS!" if result == nil)||("F"))

# Driver code - don't touch anything below this line.
puts "TESTING find_missing_letter..."
puts

result = find_missing_letter("opqrsuv")

puts "Your method returned:"
puts result
puts

if result == "t"
  puts "PASS!"
else
  puts "F"
end

result = find_missing_letter("xyz")

puts "Your method returned:"
puts result
puts

if result == nil
  puts "PASS!"
else
  puts "F"
end

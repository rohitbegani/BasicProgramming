## Implement an algorithm to determine if a string has all unique characters??
def unique_string(string_to_check)
	if string_to_check.length == 0
		puts "Empty String"
	else
		if ('a'..'z').all?{|c| string_to_check.downcase.count(c) <= 1} == false
			puts "Duplicate characters in the string"
		else
			puts "No duplicate characters in the string"
		end
	end
end

unique_string("Hello World")
unique_string("")
unique_string("wqead Apo")
unique_string("wqead po")
unique_string("___a___")
unique_string("The quick brown fox jumps over the lazy dog")

## The above algorithm has a time complexity of O(n) because it parses through 26 characters (constant) so no effect and n which is 
## equal to the length of the string.

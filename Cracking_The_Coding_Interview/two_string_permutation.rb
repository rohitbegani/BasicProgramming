## Given two strings, write a method to decide if one is a permutation of another.

def two_string_permutation(string1, string2)
	if string1.length == 0 or string2.length == 0
		puts "One or both strings are empty"
	else
		if ('a'..'z').all?{|c| string1.count(c) == string2.count(c)} == true
			puts "Both strings are permutations of each other"
		else
			puts "Strings are not a permutation of each other"
		end
	end
end

two_string_permutation("hello", "world")
two_string_permutation("hello", "loleh")
two_string_permutation("", "")
two_string_permutation("", "hello")

## the above solution has a time complexity of O(n + m) where n and m is the length of string1 and string2 respectively. In case it is a permutation
## then the complexity would be O(n) since n == m and we ignore the constant value 2.
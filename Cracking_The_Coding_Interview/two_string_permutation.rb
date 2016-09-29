## Given two strings, write a method to decide if one is a permutation of another.

def two_string_permutation(string1, string2)
	if string1.length == 0 or string2.length == 0
		puts "One or both strings are empty"
	else
		if ('a'..'z').all?{|c| string1.downcase.count(c) == string2.downcase.count(c)} == true
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
####################
#### INCOMPLETE ####
####################

## Write a program to check if a string is a permutation of a palindrome.

def palin_perm(string1)
	if string1.length == 0
		puts "Empty String"
	elsif string1.length == 1
		puts "The string is a permutation of a palindrome"
	else
		if ('a'..'z').all?{|c| string1.downcase.count(c) % 2 == 0} == true
			puts "The string is a permutation of a palindrome"
		elsif condition
				
		else
			puts "The string is not a permutation of a palindrome"
		end
	end
end

palin_perm("taco tcoa")
palin_perm("taco cat")
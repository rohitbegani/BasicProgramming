 ## Write a program to check if a string is a permutation of a palindrome.

def palin_perm(string1)
	odd_characters = 0
	palindrome = false
	hash_map = {}
	string2 = string1.downcase.gsub(/(\W)/, '')
	if string2.length == 0
		palindrome = false
		puts "Empty String"
	elsif string2.length == 1
		palindrome = true
	else
		string2.chars.map { |chars| hash_map[chars] = (hash_map[chars]) ? hash_map[chars] += 1 : 1  }
		hash_map.keys.map { |key| odd_characters += 1 unless hash_map[key] % 2 == 0  }
	end
	if odd_characters <= 1 
		puts "It's a permutation of a palindrome"
	else
		puts "It's not a permutation of a palindrome"
	end
end

palin_perm("rohit")
palin_perm("taco tcoa")
palin_perm("taco cat")
palin_perm("")
palin_perm("a")

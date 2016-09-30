def check_palindrome(string1)
	string2 = string1.downcase.gsub(/(\W)/, '')
	if string1.length == 0
		puts "Empty string"
	elsif string2 == string2.reverse
		puts "Palindrome"
	else
		puts "not a Palindrome"
	end
end

check_palindrome("taco cat!")
check_palindrome("tac1        !@$#%&cat")
check_palindrome("this is it")
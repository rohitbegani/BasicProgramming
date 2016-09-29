## Convert all spaces in a string to %20
def url_maker(string1)
	if string1.length == 0
		puts "Empty string"
	else
		puts string1.gsub(/ /, '%20')	
	end
end

url_maker(" ")
url_maker("oinasf sianf")
url_maker("this is_it!")
url_maker("https://jobs.github.com/positions description intern location ")

## the above algorithm has a time complexity of O(n) because it parses the whole string once to find all the spaces and
## replace it with %20 and in effect convert it into a url like string.
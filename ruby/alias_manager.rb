#Build a method that creates a fake name given a spy's real name.
#Take Spy name as input
#Swap spy's first name with last name, creating an array
#Change all vowels to next vowel, and all consonants to next consonant. 

def first_last_swap(name)
	name.split(' ').reverse.join(' ')
end


#Creating a User Interface
username = ""

#Ask user for information
#Continue to ask until quit is entered.
while username!= "quit"
puts "What name would you like to be aliased? Type quit when done."
	username = gets.chomp
	p first_last_swap(username)
	if username == "quit"
		p "Thank you for using the Alias Generator."
	else
		p first_last_swap(username)
end
end

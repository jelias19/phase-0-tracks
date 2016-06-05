#Build a method that creates a fake name given a spy's real name.
#Take Spy name as input
#Swap spy's first name with last name, creating an array
#Change all vowels to next vowel, and all consonants to next consonant. 


#Create method for swapping name
def first_last_swap(name)
	name.split(' ').reverse.join(' ').downcase
end

#Create a method to take either next vowel or consonant using index value
def next_letter(letter)
	vowels = 'aeiou'
	consonants = 'bcdfghjklmnpqrstvwxyz'
		if vowels.include?(letter)
			if vowels.index(letter)+1 >= vowels.length
				vowels[0]
			else
				vowels[vowels.index(letter).next]
			end
		elsif consonants.include?(letter)
			if consonants.index(letter)+1 >= consonants.length
				consonants[0]
			else
				consonants[consonants.index(letter).next]
		end
	else letter
	end
end

#Create a method to change the actual letter
def letter_adjustment(name)
	i=0
	while i<name.length
		name[i] = next_letter(name[i])
		i+=1
	end
	name
end

#Create method to adjust name
def aliases(name)
	changed_name = first_last_swap(name)
	letter_adjustment(changed_name)
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
		p aliases(username)
end
end

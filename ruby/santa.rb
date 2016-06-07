# SANTACON SIMULATOR



# BUSINESS LOGIC


# Method to print santas message
def speak
	p "Ho, ho, ho! Haaaappy holidays!"
end

# Method that takes a cookie type and print result
def eat_milk_and_cookies
#Ask user for cookie type
	puts "What cookie would you like?"	
	cookie_type = gets.chomp
	puts "That was a good #{cookie_type}."
end

# Method that prints "Initializing Santa instance"
def initialize
	puts "Initializing Santa instance..."
end
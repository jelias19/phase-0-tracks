# SANTACON SIMULATOR

# BUSINESS LOGIC

class Santa
	# Method that prints "Initializing Santa instance"
	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	# Method to print santas message
	def speak
	p "Ho, ho, ho! Haaaappy holidays!"
	end

	# Method that takes a cookie type and print result
	def eat_milk_and_cookies(cookie_type)
	#Ask user for cookie type
		#puts "What cookie would you like?"	
		#cookie_type = gets.chomp
		puts "That was a good #{cookie_type}."
	end
end

santa = Santa.new
santa.speak
santa.eat_milk_and_cookies("Snickerdoodle")

# SANTACON SIMULATOR

# BUSINESS LOGIC

class Santa

	attr_reader :age, :ethnicity
	attr_accessor :gender


	# Method that prints "Initializing Santa instance"
	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", 
			"Donner", "Blitzen"]
		@age = 0
	end

	# Method to print santas message
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	# Method that takes a cookie type and print result
	def eat_milk_and_cookies(cookie_type)
	#Ask user for cookie type
		#puts "What cookie would you like?"	
		#cookie_type = gets.chomp
		puts "That was a good #{cookie_type}."
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer_name)
		@reindeer_ranking.delete(reindeer_name)
		@reindeer_ranking.insert(-1, reindeer_name,)
	end

	#Getter method age
	#def age
	#	@age
	#end

	#Getter method ethnicity
	#def ethnicity
	#	@ethnicity
	#end

	#Setter method gender
	#def gender=(new_gender)
	#	@gender = new_gender
	#end

end

#DRIVER CODE


#Jeff = Santa.new
#Jeff.speak
#Jeff.eat_milk_and_cookies("Snickerdoodle")

santas = []
genders = ["Male", "Female", "Bigender", "Agender", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

genders.length.times  {|i| santas << Santa.new(genders[i], ethnicities[i])}

p santas
#p santas
#santas << Santa.new("female", "latino")
#santas << Santa.new("male", "white")
#santas << Santa.new("female", "chinese")

#p santas

#get_mad_at("Dancer")
#p santas 



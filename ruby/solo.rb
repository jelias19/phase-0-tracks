# Create a class with at least 3 attributes (using at least two data types)
# Class should have at least 3 methods, one that takes argument

#Class: Hockey Player
#Attributes:
	#Name:
	#Hand: (left or right)
	#Position (varies)
#Methods
	#Pass
	#Score
	#Fight

class Hockey

	def pass
		puts "pass the puck"
	end

	def score
		puts "shoots and scores"
	end

	def fight
		puts "throws a punch, and knocks him out."
	end	

end	

hockey = Hockey.new
hockey.pass
hockey.score
hockey.fight


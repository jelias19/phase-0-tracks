# Create a class with at least 3 attributes (using at least two data types)
# Class should have at least 3 methods, one that takes argument

#Class: Hockey Player
#Attributes:
	#Name:
	#Hand: (left or right)
	#Position (varies)
	#Number
#Methods
	#Pass
	#Score
	#Fight(opponent)

class Hockey

	attr_reader :hometeam
	attr_accessor :other_team, :name, :hand, :position, :number

	def initialize(position, hand)
		puts "Let the game begin."
		@other_team = other_team
		@name = name
		@position = position
		@hand = hand
		@number = 1
		@hometeam = "Islanders"
	end

	def pass
		puts "#{name} passes the puck."
	end

	def score
		puts "shoots and scores"
	end

	def fight(other_team)
		puts "throws a punch at the #{other_team}'s player, and knocks him out."
	end	

end	


#DRIVER CODE
=begin
player = Hockey.new("Jeff")
player.pass
player.score
player.fight("Rangers")
=end

hockey_team = []

=begin
positions = ["right wing", "left wing", "center", "left defenseman", "right defenseman", "goalie"]
hands = ["Right Handed", "Left Handed"]

5.times do 
	hockey_team << Hockey.new(positions.sample, hands.sample)
end

hockey_team.map do |player|
	player.number = rand(1..99)
end


hockey_team.each do |player|
puts "On the ice for the #{player.hometeam}, wearing ##{player.number} shooting #{player.hand}, playing #{player.position}."
end
=end


#USER INTERFACE
#Ask user if they would like to add additional players to the team?
#Ask user for players position
#Ask user for players shot
#Ask user for player number
#Exit when done








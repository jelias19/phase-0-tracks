=begin

Original Shout Module, Release 1

module Shout
	def self.yell_angrily(words)
    	words + "!!!" + " :("
  	end

  	def self.yelling_happily(words)
  		words + "!!!" + ":)"
  	end
end

#DRIVER CODE

puts Shout.yell_angrily("I hate you")
puts Shout.yell_angrily("So mean")
puts Shout.yelling_happily("Can't Wait")
puts Shout.yelling_happily("Good seeing you")

=end

#Mixin Module

module Shout
	def yell_angrily(words)
    	words + "!!!" + " :("
  	end

  	def yelling_happily(words)
  		words + "!!!" + ":)"
  	end
  end

  	class Goal
  		include Shout
  	end

  	class Save
  		include Shout
  	end

goal = Goal.new
p goal.yell_angrily("Other team scores")
p goal.yelling_happily("We scored")

save = Save.new
p save.yell_angrily("How'd he make that save")
p save.yelling_happily("Great save by the goaltender")

=begin

module Flight
  def take_off(altitude)
    puts "Taking off and ascending until reaching #{altitude} ..."
  end
end

class Bird
	include Flight
end

class Plane
	include Flight
end


=end
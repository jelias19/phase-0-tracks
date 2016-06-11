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
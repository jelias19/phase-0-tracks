module Shout
	def self.yell_angrily(words)
    	words + "!!!" + " :("
  	end

  	def self.yelling_happily(words)
  		words + "!!!" + ":)"
  	end
end

#DRIVER CODE

Shout.yell_angrily("I hate you")
Shout.yell_angrily("So mean")
Shout.yelling_happily("Can't Wait")
Shout.yelling_happily("Good seeing you")
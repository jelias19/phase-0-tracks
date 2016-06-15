# Virus Predictor

# I worked on this challenge with: Sarah Dickerson.
# We spent 1.5 hours on this challenge.

# EXPLANATION OF require_relative

# Require_relative pairs the current file with a file relative to selected file. 
#Require is a derivative of require_relative, but it is much more wordy and directs 
#using absolute path.

require_relative 'state_data'

class VirusPredictor

# Initializes VirusPredictor using three arguments and sets those arguments equal 
#to attributes @state, @population, @population_density
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# Calling the following two methods setting attributes as their arguments
  def virus_effects
    predicted_deaths
#(@population_density, @population, @state)
    speed_of_spread
#(@population_density, @state)
  end

  private
# Taking arguments defined in virus_effects and determining number of deaths based on @population_density and @population of each state and outputting how many people will die in each state due to outbreak.
  def predicted_deaths
#(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4)
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3)
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2)
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1)
    else
      number_of_deaths = (@population * 0.05)
    end

    print "#{@state} will lose #{number_of_deaths.floor} people in this outbreak"

  end

# Taking arguments defined in virus_effects and determining how quickly the virus will spread depending on @state and @population_density.
  def speed_of_spread #in months
#(population_density, state) 
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    #speed = 0.0

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


STATE_DATA.each do |state, state_properties| 
  example_state = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
  example_state.virus_effects
end

=begin
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects


#=======================================================================
# Reflection Section

What are the differences between the two different hash syntaxes shown in the state_data file?
 
  The differences between the two hashes is the way you are connecting the key with its given value. 
  The smaller hash uses a colon to assign the value to its keys, and are symbols instead of strings. 
  The larger hash is assigning a key to a value with a string.

What does require_relative do? How is it different from require?

  Require_Relative allows us to retrieve data stored in another file and use within this file, as if 
  the code was written in the same location. It is using is relative path to original file. Require 
  also allows us to use another file, but a more exact path is required.

What are some ways to iterate through a hash?

  You can iterate through a hash using various methods. You can use ".each" to iterate through 
  the hash and take the key and value as parameters. 

When refactoring virus_effects, what stood out to you about the variables, if anything?

  The scope of the instance variables being called as attributes on the virus_effects method.

What concept did you most solidify in this challenge?

  I enjoyed learning the new concept of Private, and helped me gain a better understanding of instance 
  variables, and how to iterate through a hash that has another hash within. 

=end

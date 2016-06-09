class Puppy

  def initialize
    puts "initializing new puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num)
    num.times {puts "Woof"}
  end

  def rollover
    puts "*Rolls over*"
  end

  def dog_years(num_of_human_years)
    puts "Dog years is: #{num_of_human_years * 7}."
  end

  def owners(name)
    puts "My owner is #{name} "
  end
end

#DRIVER CODE PUPPY

=begin
Tom = Puppy.new
Tom.fetch("game")
Tom.speak(3)
Tom.rollover
Tom.dog_years(5)
Tom.owners("Tj")
=end

#Friend Class
class Friend

# Initialize method
def initialize
  puts "Initializing new Friend instance..."
end

def say_hi(name)
  puts "TJ says hi to #{name}."
end

def say_bye(num_of_waves)
  num_of_waves.times {puts "TJ waves goodbye #{num_of_waves} times."}
end

end

TJ = Friend.new
TJ.say_hi("Jeff")
TJ.say_bye(3)

clones_of_TJ = []
50.times {clones_of_TJ << Friend.new}
p clones_of_TJ

clones_of_TJ.each {|x| 
  puts x.say_hi("Bob")
  puts x.say_bye(2)
}

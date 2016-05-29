#Ask how many employees will be questioned. Creating a loop for employee count.
puts "How many employees will be processed by questionaire?"
	number_questioned = gets.chomp.to_i
while number_questioned > 0
	allergy = ""

#Ask for users name.
puts "What is your name?"
	name = gets.chomp
#Ask for users age.
puts "How old are you?"
	age = gets.chomp
#Ask for users birth year.
puts "What year were you born?"
	year_born = gets.chomp
#Ask user if they want garlic bread.
puts "Our cafeteria serves delicious garlic bread. Would you us to order some for you?"
	garlic_bread = gets.chomp
#Ask user if they want insurance.
puts "Would you like to enroll in the company's health insurance? There are no additional charges!"
	health_insurance = gets.chomp
#Ask user about allergies.
until allergy == "done"
	puts "Please list any allergies, one at a time. Type done when complete."
		allergy = gets.chomp
	if allergy == "sunshine"
			break
		end
	end


#Determining vampire results based on input from user.
if allergy.downcase == "sunshine"
	result = "Probably a vampire."
elsif name.downcase == ("drake cula" || name.downcase == "tu fang")	
	result = "Definately a vampire"
elsif (2016 - year_born.to_i == age.to_i) && (garlic_bread.downcase == "yes" || health_insurance.downcase == "yes")
	result = "Probably not a vampire."
elsif (2016 - year_born.to_i != age.to_i) && (garlic_bread.downcase != "no" || health_insurance.downcase != "no")
	result = "Probably a vampire."
elsif (2016 - year_born.to_i != age.to_i) && garlic_bread.downcase == "no" && health_insurance.downcase == "no"
	result = "Almost certainly a vampire."
else
	result = "Results Inconclusive."
end

#print vampire status
puts "#{name.capitalize} is #{result.downcase}"

#add to counter for loop after each input.
number_questioned -= 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends." 
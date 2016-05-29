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


#Determining vampire results based on input from user.
if name.downcase == "drake cula" || name.downcase == "tu fang"	
	result = "Definately a vampire"
else
if (2016 - year_born.to_i == age.to_i) && (garlic_bread.downcase == "yes" || health_insurance.downcase == "yes")
	result = "Probably not a vampire."
elsif (2016 - year_born.to_i != age.to_i) && (garlic_bread.downcase != "no" || health_insurance.downcase != "no")
	result = "Probably a vampire."
elsif (2016 - year_born.to_i != age.to_i) && garlic_bread.downcase == "no" && health_insurance.downcase == "no"
	result = "Almost certainly a vampire."
else
	result = "Results Inconclusive."

end
end

#print vampire status
puts result	

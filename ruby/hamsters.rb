puts "What is the name of your hamster?"
	name = gets.chomp

puts "How loud is this hamster, scale of 1 - 10?"
	volume = gets.chomp.to_f

puts "What is the color of the hamsters fur?"
	fur_color = gets.chomp

puts "Would you adopt this hamster? Yes, no, or maybe?"
	adopt = gets.chomp.downcase

puts "What is the approximate age of this hamster?"
	age = gets.chomp
	if age == ""
		age = "nil"
	else 
		age = age.to_f
	end
	

puts "The hamster is named #{name}, and is #{volume} notches loud on a scale of 1-10."
puts "The hamster is #{fur_color} and approximately #{age} years old."

if adopt == "yes"
	puts "#{adopt.capitalize}, I would adopt this hamster."
elsif adopt == "maybe"
	puts "#{adopt.capitalize}, I would adopt this hamster."
else adopt == "no"
	puts "#{adopt.capitalize}, I would not adopt this hamster."
end
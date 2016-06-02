#Using a hash in a program

#Initialize empty hash for client information
client = {}

#Ask for clients full name.
puts "What is your full name?"
name = gets.chomp
client.store(:name, name)

#Ask for the age of client.
puts "How old are you?"
age = gets.chomp.to_i
client.store(:age, age)

#Ask for number of children.
puts "How many children do you have?"
number_of_children = gets.chomp.to_i
client.store(:number_of_children, number_of_children)

#Ask for the decor theme.
puts "What decor theme would you like?"
theme = gets.chomp
client.store(:theme, theme)

#Ask for location of projet.
puts "Where will this project take place?"
location = gets.chomp
client.store(:location, location)

p client
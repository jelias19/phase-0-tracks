#Using a hash in a program

#Initialize empty hash for client information
client = {}

#Ask for clients full name.
#Store users input into the hash
puts "What is your full name?"
client[:name] = gets.chomp.capitalize

#Ask for the age of client.
#Store users age into the hash
puts "How old are you?"
client[:age] = gets.to_i

#Ask for number of children.
#Store users children number into the hash
puts "How many children do you have?"
client[:number_of_children] = gets.chomp.to_i

#Ask for the number of bedrooms being rennovated
#Store number of bedrooms
puts "How many rooms will we work on?"
client[:room] = gets.to_i

#Ask for location of projet.
#Store location input into the hash
puts "Where will this project take place?"
client[:location] = gets.chomp

puts "Client details are as follow:"
puts "Name: #{client[:name]}"
puts "Age: #{client[:age]}"
puts "Number of Children: #{client[:number_of_children]}"
puts "Rooms: #{client[:room]}"
puts "Location of Project: #{client[:location]}"

puts "If information needs to be updated, type that field. Please enter no if everything is final."
	update_field = gets.chomp
	if update_field == "no"
	else
		puts "Please enter the updated information?"
		new_client_info = gets.chomp
		if update_field == "name"
			client[:name] = new_client_info
		elsif update_field == "age"
			client[:age] = new_client_info
		elsif update_field == "number_of_children"
			client[:number_of_children] = new_client_info
		elsif update_field == "room"
			client[:room] = new_client_info
		elsif update_field == "location"
			client[:location] = new_client_info
		end
	end

puts "The final client details are as follows"
puts "Name: #{client[:name]}"
puts "Age: #{client[:age]}"
puts "Number of Children: #{client[:number_of_children]}"
puts "Rooms: #{client[:room]}"
puts "Location of Project: #{client[:location]}"

puts "We look forward to working on this project."	
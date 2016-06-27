# Build a program that allows user to enter information for players 
# trying out for hockey team
# Player information will include
# 		name, jersey number, position, age, previous team

# Require gems
require 'sqlite3'

# Create a SQLite3 Database
tryout_roster = SQLite3::Database.new("players.db")
tryout_roster.results_as_hash = true

create_table_cmd = <<-BING
	CREATE TABLE IF NOT EXISTS tryout_roster(
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		age INT,
		position VARCHAR(255),
		hand VARCHAR(255),
		number INT
	)
BING

# Create a table of players
tryout_roster.execute(create_table_cmd)

# Add initial player
#tryout_roster.execute("INSERT INTO tryout_roster (name, age, position, hand) VALUES ('Jeff Elias', 29, 'center', 'right')")

# Retrive the players who have been signed up to tryout
#players = tryout_roster.execute("SELECT * FROM tryout_roster")
#puts players.class
#p players

#players.each do |player|
#	puts "#{player['name']} is #{player['age']}, playing #{player['position']} and shoots with his #{player['hand']} hand."
#end

#Add initial player trying out for hockey team
def create_player(tryout_roster, name, age, position, hand, number)
	tryout_roster.execute("INSERT INTO tryout_roster (name, age, position, hand, number) VALUES (?, ?, ?, ?, ?)", [name, age, position, hand, number])
end

#Remove a player from tryouts
def remove_player(tryout_roster, name)
	tryout_roster.execute("DELETE FROM tryout_roster WHERE name=?", [name])
end

#Show players by name, position, and number
def show_all_players(tryout_roster)
	roster = tryout_roster.execute("SELECT * FROM tryout_roster")
	roster.each do |roster|
		puts "Name: #{roster['name']}, Position: #{roster['position']}, #Number: #{roster['number']}"
	end
		puts "We wish them luck."
		puts "--------------------"
end

# Build a user interface that asks to enter each players information, view players, removte player
# Continue add players until user 'quits'

action = ""

puts "Welcome to the MRHL tryouts."

while action != "quit"

puts "Do you want to add, remove, or view players?
Type 'add' to add player to roster.
Type 'remove' to remove player from tryouts.
Type 'view' to view players signed up for tryouts.
Type 'quit' to exit."
action = gets.chomp

	if action == "add"
		puts "What is the players full name?"
		name = gets.chomp
		puts "How old is #{name}?"
		age = gets.to_i
		puts "What position does #{name} play?"
		position = gets.chomp
		puts "What hand does #{name} shoot with?"
		hand = gets.chomp
		puts "What number does #{name} wear?"
		number = gets.to_i
		create_player(tryout_roster, name, age, position, hand, number)
		puts "#{name} has been added to the tryouts. Good luck trying out."
	elsif action == "view"
		puts "The following players will be trying out."
		puts "--------------------"
		show_all_players(tryout_roster)	
	elsif action == "remove"
		puts "What player would like to cut from the tryout?"
		name = gets.chomp
		remove_player(tryout_roster, name)
		puts "#{name} has been cut from tryouts. Better luck next year."
	elsif action == "quit"
		puts "Thank you for using the MRHL tryout form."
	else
		puts "That is not a valid entry. Please try again"
		puts "---------------------"
		puts "Do you want to add, remove, or view players?"
		puts "Type 'add' to add player to roster."
		puts "Type 'remove' to remove player from roster."
		puts "Type 'view' to view players signed up for tryouts."
		puts "Type 'quit' to exit."
		action = gets.chomp
	end
end





####USING WHEN STATEMENTS
=begin
case action
	when "add"
		puts "What is the players full name?"
		name = gets.chomp
		puts "How old is #{name}?"
		age = gets.to_i
		puts "What position does #{name} play?"
		position = gets.chomp
		puts "What hand does #{name} shoot with?"
		hand = gets.chomp
		puts "What number does #{name} wear?"
		number = gets.to_i
		create_player(tryout_roster, name, age, position, hand, number)
		puts "#{name} has been added to the tryouts. Good luck trying out."
	when "view"
		puts "The follwoing players will be trying out."
		puts "--------------------"
		show_all_players(tryout_roster, name, position, number)
	when "remove"
		puts "What player would like to cut from the tryout?"
		name = gets.chomp
		remove_player(tryout_roster, name)
		puts "#{name} has been cut from tryouts. Better luck next year."
	when "quit"
		puts "Thank you for using the MRHL tryout form."
	else
		puts "That is not a valid entry. Please try again"
		puts "---------------------"
		puts "Do you want to add, remove, or view players?"
		puts "Type 'add' to add player to roster."
		puts "Type 'remove' to remove player from roster."
		puts "Type 'view' to view players signed up for tryouts."
		puts "Type 'quit' to exit."
		action = gets.chomp
	end
end

=end




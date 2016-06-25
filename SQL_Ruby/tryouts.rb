# Build a program that allows user to enter information for players 
# trying out for hockey team
# Player information will include
# 		name, jersey number, position, age, previous team

# Require gems
require 'sqlite3'

# Create a SQLite3 Database
tryout_roster = SQLite3::Database.new("players.db")

create_table_cmd = <<-BING
	CREATE TABLE IF NOT EXISTS tryout_roster(
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		age INT,
		position VARCHAR(255),
		hand VARCHAR(255)
	)
BING

# Create a table of players
tryout_roster.execute(create_table_cmd)

# Add initial player
tryout_roster.execute("INSERT INTO tryout_roster (name, age, position, hand) VALUES ('Jeff Elias', 29, 'Center', 'Right')")


# Build a user interface that asks to enter each players information
# Continue add players until user 'quits'








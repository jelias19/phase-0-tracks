# Build a program that allows user to enter information for players 
# trying out for hockey team
# Player information will include
# 		name, jersey number, position, age, previous team

# Require gems
require 'sqlite3'

# Create a SQLite3 Database
tryout_roster = SQLite3::Database.new("players.db")

# Create a table of players

# Add initial player

# Build a user interface that asks to enter each players information
# Continue add players until user 'quits'
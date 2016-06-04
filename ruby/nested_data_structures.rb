hockey_stadium = {
	ice_rink: {
		name: 'Buffalo Wings',
		sponsors: [
			"Bauer",
			"Reebok",
			"EA Sports"
			],
		capacity: {
			seating_room: 400,
			standing_room: 100
		},
	},
	bathroom_1: {
		gender: 'Male',
		sinks: 6,
		toilets: {
			urinals: 6,
			stalls: 3
		},
	},
	bathroom_2: {
		gender: 'Female',
		sinks: 6,
		toilets:{
			urinals: 0,
			stalls: 8
	},
	},
	locker_room_1: {
		name: 'Guest Room 1',
		showers: 2,
		sinks: 2,
		toilets:{
			urinals: 2,
			stalls: 1,
		},
		seating: 18
	},
	locker_room_2: {
		name: 'Guest Room 2',
		showers: 2,
		sinks: 2,
		toilets:{
			urinals: 2,
			stalls: 1,
		},
		seating: 14
	},
	locker_room_3: {
		name: 'Guest Room 3',
		showers: 0,
		sinks: 2,
		toilets:{
			urinals: 1,
			stalls: 0,
		},
		seating: 14
	},
	home_team_locker_room: {
		name: 'Buffalo Wings Den',
		showers: 4,
		sinks: 4,
		toilets:{
			urinals: 3,
			stalls: 2,
		},
		seating: 24,
	},
	cafeteria:{
		drinks: [
			"Gatorade",
			"Snapple",
			"Water",
			soda:[ 
				"Pepsi",
				"Diet Pepsi",
				"Mountain Dew"
			],
		],
		snacks: [
			"Popcorn",
			"Nachos",
			candy:[
				"Twix",
				"Snickers",
				"Swedish Fish"
			],
		],
		entrees: [
			"Cheeseburger",
			"Hamburger",
			"Chicken Fingers with Fries",
			"Hot Dog",
		],
		condiments: [
			"Ketchup",
			"Mustard",
			"Mayonanise"],
	},
}

puts "The following drinks are available:"
 p hockey_stadium[:cafeteria][:drinks]

puts "The follow sodas are available:
 #{hockey_stadium[:cafeteria][:drinks][3]}"

puts "The follow entrees are available:"
p hockey_stadium[:cafeteria][:entrees]
puts "with the following condiments:"
p hockey_stadium[:cafeteria][:condiments]

puts "There is room for #{hockey_stadium[:ice_rink][:capacity][:seating_room]} people to sit while watching the game."

puts "#{hockey_stadium[:locker_room_1][:seating]} people can sit in #{hockey_stadium[:locker_room_1][:name]}"


//FIND THE LONGEST PHRASE USING SORT FUNCTION
//Function that takes an array of strings
//Assess the length of each string in the array
//Sort array into order based on length
//return string of the longest value

var teams = ["Jets", "Islanders", "Yankees", "Knicks"];
var sort = teams.sort(function(a,b){ return b.length - a.length});

var states = ["New York", "New Jersey", "Florida", "Idaho"];
var sort1 = states.sort(function(a,b){ return b.length - a.length});

//DRIVER CODE
console.log(sort[0])
console.log(sort1[0])

//FIND THE LONGEST PHRASE CHECKING LENGTH OF EACH

var teams = ["Jets", "Islanders", "Yankees", "Knicks"];
var long = 0;
var longestString = "";
for (var i=0; i < teams.length; i++) {
    if(teams[i].length > long) {
        long = teams[i].length;
        longestString = teams[i];
     }
}
console.log(longestString);

//FIND A KEY-VALUE MATCH
//Function that looks at two objects
//Check objects for at least one key-value pair
//Return true if value is in both objects, else false


//Object 1
var player = {}
player.name = 'Jeff';
player.number = '19';
player.position = 'Center';
player.team = "NYI";
console.log(player)

//Object 2
var player2 = {}
player2.name = 'Mike';
player2.number = '27';
player2.position = 'Right Defenseman';
player2.team = "NYI";
console.log(player2)

//TEST CODE
if (player.name == player2.name){
	console.log("Players have the same name");
} else {
	console.log("Players do not have the same name");
}

if (player.number == player2.number){
	console.log("Numbers match");
} else {
	console.log("Numbers do not match");
}

if (player.position == player2.position){
	console.log("Player 1 and 2 play the same position");
} else {
	console.log("Player 1 and 2 play different positions");
}

if (player.team == player2.team){
	console.log("The two players, " + player.name + " and " + player2.name + " play on the same team");
} else {
	console.log("The two players, " + player.name + " and " + player2.name + "do not play on the same team");
}

//GENERATE RANDOM TEST DATA
//Take an integers as a length
//Build and return an array of strings with given length

arrayOfWords = []





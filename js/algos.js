//Function that takes an array of strings
//Assess the length of each string in the array
//Sort array into order based on length
//return string of the longest value

var teams = ["Jets", "Islanders", "Yankees", "Knicks"];
var sort = teams.sort(function(a,b){ return b.length - a.length});

console.log(sort[0])

var states = ["New York", "New Jersey", "Florida", "Idaho"];
var sort1 = states.sort(function(a,b){ return b.length - a.length});

console.log(sort1[0])

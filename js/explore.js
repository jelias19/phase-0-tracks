//Function to reverse a string, taking the string as a parameter
//Loop through the string, starting with the last character and print each letter
//until at beginning of the string


function reverse(str){
	var reversedString = "";
	for (var i = str.length - 1; i >= 0; i--){
		reversedString += str[i];
	}
	return reversedString;
}

console.log(reverse("Reverse Me"))

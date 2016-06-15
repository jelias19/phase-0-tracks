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


//Driver Code
console.log(reverse("Reverse Me"))

if (2 >= 1){
	console.log(reverse("Reverse me"))
}
else {
	console.log("Unable to reverse")
}

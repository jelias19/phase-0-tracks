var a = "hello";
console.log(a);

var photo = document.getElementById("coding");
photo.style.width="500px"

function makeInvisible(event){
	console.log("make it" + event.target + "make invisible");
	console.log(event.target);
	event.target.style.visibility="hidden";
}

function makeVisible(event){
	event.target.style.visibility="visible";
}

var body = document.getElementById("page");

body.addEventListener("mouseover", makeInvisible);
body.addEventListener("mouseout", makeVisible);


var colors = ["blue", "green", "brown", "indigo"];
var names = ["Max", "Bob", "Ed", "Stephanie"];

colors.push("red");
names.push("Alex");


var horses = {};

for (var i = 0; i < colors.length && i < names.length; i++)
{
  horses[names[i]] = colors[i];
}

console.log(horses);      

//Create object for Car

function Car(color, model, speed, seats, is4WD){
  console.log("Our new car:" );

//Attribues for car object 
  
  this.color = color;
  this.model = model;
  this.speed = speed;
  this.seats = seats;
  this.is4WD = is4WD;   
  
  this.honk = function() {console.log("Honk, Honk, Honk");
};
  console.log("---------------")
  console.log("CAR BEING BUILT");
}

console.log("Our first car in the factory...");
var car1 = new Car("blue", "Mini Cooper", 100, 5, true);
console.log("This " + car1.color + " car will reach " + car1.speed + " MPH.");
console.log("Does this car have a horn?");
car1.honk();

console.log("Our second car in the factory...");
var car2 = new Car("green", "Porsche", 140, 4, false);
if (car2.is4WD) {
  console.log("This " + car2.model + " can climb the mountains.");
} else {
  console.log("This " + car2.model + " cannot climb the mountains");
}
//console.log("This " + car2.is4WD + " car can not climb the mountains.");
console.log("Does this car have a horn?");
car2.honk();

console.log("Our third car in the factory...");
var car3 = new Car("yellow", "School Bus", 80, 13, true);
console.log("This " + car3.model + " has " + car1.seats + " seats.");
if (car3.is4WD) {
  console.log("This " + car3.model + " can climb the mountains.");
} else {
  console.log("This " + car3.model + " cannot climb the mountains");
}
console.log("Does this car have a horn?");
car3.honk();



//TEST CODE
//var colors = ["blue", "green", "yellow", "black", "red"];
//var model = ["Mini Cooper", "Porsche", "School Bus", "Ferrari", "Fiat"];
//var speed = [100, 140, 80, 160, 85];
//var seats = [5, 4, 13, 2, 6];
//var is4WD = [true, false, true, false, false];
//  
//var carWarehouse = {} 
//
//for (var i = 0; (i < colors.length && i < model.length && i < speed.length && i < seats.length && i < is4WD.length); i++) {
//  //carWarehouse[names[i]] = colors[i];
//  var carWarehouse = new Car(carWarehouse['color'] = colors[i]);
//}
//
//console.log(carWarehouse)
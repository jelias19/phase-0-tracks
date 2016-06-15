var colors = ["blue", "green", "brown", "indigo"];
var names = ["Max", "Bob", "Ed", "Stephanie"];

colors.push("red");
names.push("Alex");


var horses = {};

for (var i = 0; (i < colors.length && i < names.length); i++) {
  horses[names[i]] = colors[i];
}
console.log(horses)      

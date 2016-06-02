def food
  food = "pizza"
  drink = "snapple"
  puts "Hey there."
  yield(food, drink)
  puts "Hope you liked it."
end

food { |food, drink| puts "We ate #{food} and drank #{drink}." }

#hash
hollywood = {:menzies => "edmure", :dinklage => "lannister", :harrington => "snow"}

#call .each on hash
hollywood.each do |actor, character|
  puts "I think #{actor} makes a great #{character}."
end
# print hash just to see raw data
p hollywood

#array
fashion = ["cloaks", "iron suit", "gowns"]

#call .each on array
fashion.each do |clothes|
  puts "They wear #{clothes}."
end
# print array just to check original data
p fashion

#call .map on array using a new variable
new_fashion = fashion.map do |clothes|
  clothes.upcase
end
# implicit return is the original array
# print new variable to see modified array
p new_fashion

#call .map on array using bang operator
fashion.map! do |clothes|
  clothes.upcase
end
# print array just to see that original is not retained when bang operator is used
p fashion

#simple array: for the sake of illustrating each method, we re-declared the array before calling each method
p nums = [43, 27, 75, 33]
p nums.delete_if {|num| num <40 }
# expect: 43, 75

p nums = [43, 27, 75, 33]
p nums.keep_if {|num| num > 25}
#expect: all

p nums = [43, 27, 75, 33]
p nums.select {|num| num <= 40}
#expect: 27, 33

p nums = [43, 27, 75, 33]
p nums.drop_while {|num| num < 55 }
#expect: 75, 33

#simple hash: for the sake of illustrating each method, we re-declared the hash before calling each method

p trans = {"apple" => 5, "banana" => 10, "cherry" => 20 }
p trans.delete_if {|word, digit| word >= "banana" }
#expect: "apple" => 5

p trans = {"apple" => 5, "banana" => 10, "cherry" => 20 }
p trans.keep_if {|word, digit| word > "banana"}
#expect: "cherry" => 20

p trans = {"apple" => 5, "banana" => 10, "cherry" => 20 }
p trans.select {|word, digit| word <= "banana"}
#expect: "apple" => 5, "banana" => 10

p trans = {"apple" => 5, "banana" => 10, "cherry" => 20 }
p trans.drop_while {|word, digit| word < "banana"}
#expect: "banana" => 10, "cherry" => 20
#note on this method: it's lazy - once condition is met, it stops looking/working, even if more items afterward satisfy this condition

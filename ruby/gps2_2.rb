# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
#parse string into individual strings (one for each item) returns array
  #iterate through array (EACH) to input string as key   in hash
  # set default to 1
  # print the list to the console [can you use one of your other methods here?]
# output: hash of strings => integers
  
def make_list(groceries)
  grocery_array = groceries.split
  shopping_list = {}
  grocery_array.each { |item| shopping_list[item] = 1 }
  shopping_list
end

# Method to add an item to a list
# input: item name and optional quantity
# add input item to hash with specified quantity as value
# output: hash of strings => integers

def add_item(list, new_item, quantity=1)
  list[new_item] = quantity 
end

# Method to remove an item from the list
# input: item name as string
# use .delete to delete key value pair
# output: updated hash

def del_item(list, item_to_del)
  list.delete(item_to_del)
end


# Method to update the quantity of an item
# input: string of item name, new quantity convert to int
# update quantity by using list[item_name] = integer
# output: updated hash

def item_quantity(list, item_to_update, quantity)
  list[item_to_update] = quantity 
end

# Method to print a list and make it look pretty
# input: hash
# use EACH to print item and quantity with extra text as necessary to make pretty
# output: string output

def print_list(list)
  puts "Shopping List"
  list.each { |item, quantity| puts "You need #{quantity} #{item}(s)." }
end

### TESTING CODE

#Initial Grocery List
groceries = make_list("lettuce yogurt chicken")
  #Print List
  p groceries

#Adding items to grocery list
add_item(groceries,"lemonade", 2)
add_item(groceries,"tomatoes", 3)
add_item(groceries,"onion", 1)
add_item(groceries,"ice cream", 4)
  #Print List
  p groceries

#Remove items from list
del_item(groceries, "lemonade")
  #Print List
  p groceries

#Update Quanity
item_quantity(groceries, "ice cream", 1)
  #Print List
  p groceries

#Print List
print_list(groceries)



=begin
#RELEASE 5:REFLECT

1. What did you learn about pseudocode from working on this challenge?

	I learned the importance of pseudocode and how much it can help build out the code you are looking to write.
	The more detailed the pseudocode is, the easier it will be to write the program, and help you underand what is needed.

2. What are the tradeoffs of using arrays and hashes for this challenge?

	We used both arrays and a hash, but our main object was a hash which we thought made sense given the information needed.

3. What does a method return?

	Method returns a value, whatever you tell is to. 

4. What kind of things can you pass into methods as arguments?
	
	You can pass strings, intergers, arrays, hashes or code blocks into a method. 

5. How can you pass information between methods?

	Information can be passed between methods by passing the return from one method into the next method. Also can use instance variables.

6. What concepts were solidified in this challenge, and what concepts are still confusing?

	This challenge helped me get a better understanding on passing arguments into methods, and the expected return from the method. Also helped clear up block a bit.

=end
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
# Create hash with items and quantity
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [grocery list hash]


# method create list
# input: name of the list
# output: empty list as a hash

# method add item to the list
# input: item name, optional quantity
# output: updated grocery list of items
# Steps: Add item to a list and quantity hash[:item] = quantity 

# method to remove item from list
# input: item to remove and quantity
# output: updated grocery list
# Steps: Remove item and quantity from list delete(item)

# method to update quantity of an item
# input: optional quantity
# output: updated grocery list
# steps: update quantity using the same item name hash[:item] = quantity

# method print pretty list
# input: updated grocery list hash
# output: Formatted list in string form
# steps: Use put items and quantity into string. 


def grocery_list
  list = Hash.new
end

def add_item(list, item, qty)
  list[item] = qty
end
  
def remove_item(list, item, qty)
  list.delete(item)
end

def update_quantity(list, item, qty)
  list[item] = qty
end

def print_list(list)
  list.each do |item , qty| 
    puts "We need #{qty} #{item}."
  end
end

my_list = grocery_list

add_item(my_list, "lemonade", 2)

add_item(my_list, "tomatoes", 3)

add_item(my_list, "onion", 1)

add_item(my_list, "ice cream", 4)

remove_item(my_list, "lemonade", 2)

update_quantity(my_list, "ice cream", 1)

print_list(my_list)
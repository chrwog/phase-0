# Research Methods

# I spent [2] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 2

# Pseudocode
# input: array, number of pets to add
# output: original array modified
# Steps: Check if elements of the array are an integer.
# If an integer, add given number to the integer.

# Initial Solution
# def my_array_modification_method!(source, thing_to_modify)
#   source.map! do |x|  
#     if x.is_a?(Integer)
#       x += thing_to_modify
#     else x
#     end
#   end
# end

def my_array_modification_method!(source, thing_to_modify)
  source.map! do |x|  
    if x.is_a?(Integer) then x += thing_to_modify else x end
  end
end

# Pseudocode
# input: hash, updated age
# output: original hash modified
# Steps: Go through each value in Hash and add user given number.

# Initial Solution
# source.each do |k, v|
#   	source[k] = v + thing_to_modify
#   end
# end

def my_hash_modification_method!(source, thing_to_modify)
	source.each {|k, v| source[k] = v + thing_to_modify}
end


## Identify and describe the Ruby method(s) you implemented.
# map! - Adds the given code block to each element of the original array
# .is_a? - Checks to see if the given element is an integer. Returns a boolean (true, false).
# .each - Takes each element and passes them through the given code block. 

## Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
# For the array I used the .map! method (destructive). This adds whatever you want to each element in the array.
# In order to not get errors with the strings in the array, I used an if else statement with the .is_a? method.
# The .is_a? method checks to see if the element is an integer or not. If it is it returns true, otherwise it's false.
# If the element is an integer, the given number is added to that element.
# For refactoring I used a For then else statement to put it all on one line.

# For the Hash I used the .each method. This was used to go through each key and value. 
# For each value, the given number was added to it.


## Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
# I learned that pseudocode is really helpful for determining what methods I should look for. By breaking the steps 
# down I was able to figure out what I wanted to do with the array. This made it easier to search the Ruby docs for the 
# appropriate method. Explaining the research renforces what I have learned and helps me remember the steps I took. This
# could help me on future challenges.
# Calculate the mode Pairing Challenge

# I worked on this challenge [with: Kevin Huang ]

# I spent [1.5] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode
# input: Array of numbers or strings
# output: Array of the most frequent values if only one frequent value returns single array
# Steps: 
# Create new hash
# Convert Array elements to Hash Key.
# Assign default hash value to key
# iterate over each hash with an if loop.
# if each hash key is the same as the array element value, add 1 to the hash value.
# Pull biggest hash values out and put hash key into array

# 1. Initial Solution
# def mode(array)
#   h = array.each_with_object(Hash.new(0)) do |item, list|
#     list[item] += 1
#   end
#   big_count = 0
#   h.each_value do |value|
#     if big_count < value
#       big_count = value
#     end
#   end
#   a = []
#   h.each_pair do |key,value|
#     if value == big_count
#       a.push(key)
#     end
#   end
#   a
# end



# 3. Refactored Solution

def mode(array)
  h = array.each_with_object(Hash.new(0)) do |item, list|
    list[item] += 1
  end
  a = []
  h.each {|k, v| a.push(k) if v == h.values.max}
  a
end


# 4. Reflection

## Which data structure did you and your pair decide to implement and why?
# We implemented the hash data structure. This allowed us to use the array elements as the key, and the number of times they repeated as the value. We were able to manipulate the data to produce the solution this way.

## Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 
# No. We had better pseudocode for the last assignment. Mainly because it was more detailed. This could also be because the first challenge was easier for us than this challenge.

## What issues/successes did you run into when translating your pseudocode to code?
# Our pseudocode wasn't verbose enough. We had the basic idea, but we didn't know the details. We couldn't figure out how to get the hash value to push the proper key into the array.
# Our initial solution was to create a variable to hold the count and iterate through two loops. We later found the .max method which made things way easier.

## What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
# For our initial solution my partner used an interesting .each_with_object method from his GPS grocery list. We also used each_value and each_pair. We found the .max method which seems like it will be really handy in the future while refactoring.

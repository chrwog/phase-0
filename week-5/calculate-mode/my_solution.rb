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

## Were you successful in breaking the problem down into small steps?
# Yes. We were able to break the problem down and slowly work our way to a solution.

## Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
# Sort of. We initially thought we had all of the steps in our pseudocode. However some of the steps required more detail than what we had written down in the pseudocode.
# We were successful in determining the broad strokes of the code, however we missed some of the finer details that we probably should have put in the pseudocode.

## Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
# No. We were able to get the count of the number of repeating elements as a value with the element being the hash, for example if 5 repeated twice 5 => 2. But had trouble translating that into an array. To resolve this, we used an if loop to put the values in the variable big_count. We then compared each value to the big_count in another if loop and put the keys with the values equal to the big_count into the final array.
	
## When you refactored, did you find any existing methods in Ruby to clean up your code?
# Yes. We discovered the .max method which returns the object with the largest value. This made it easy to compare how many times each element repeated and push the ones with the most frequent values.

## How readable is your solution? Did you and your pair choose descriptive variable names?
# I think our initial solution is readable but  bit confusing. Our refactored solution is much easier to read. I think our variable names were descriptive.

## What is the difference between destructive and non-destructive methods in your own words?
# Destructive methods alter the original input whereas non-destructive methods create new inputs and modify those, leaving the original intact.

# Pad an Array

# I worked on this challenge [Donald Lang]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# array, minimum size for the array, optional array padded argument

# What is the output? (i.e. What should the code return?)
# A padded array

# What are the steps needed to solve the problem?
# Determine if the minimum size is greater than the array length
#Add the optional array padded arguement to the array a number of times equal difference between the array length and min_size

#Return array

# 1. Initial Solution
# def pad!(array, min_size, value = nil) #destructive
#   # Your code here
#     new_array= array
#   padding = min_size - array.length
#   if padding > 0
#     padding.times do |filler|
#       new_array << value
#     end
#   end
#   return new_array
# end

# def pad(array, min_size, value = nil) #non-destructive
#   new_array= Array.new
#   array.length.times do |x|
#     new_array << (array[x])
# end
#   padding = min_size - array.length
#   if padding > 0
#     padding.times do |filler|
#       new_array << value
#     end
#   end
#   return new_array
# end


# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive

 # Your code here
array.fill(value, array.length..(min_size-1))
end

def pad(array, min_size, value = nil) #non-destructive
 # Your code here
new_array= Array.new
 length = array.length
 length.times {|x| new_array << (array[x])}
 new_array.fill(value, length..(min_size-1))
end

# 4. Reflection

## Were you successful in breaking the problem down into small steps?
# Yes we were able to break the problem down in the pseudocode and determine our steps.

## Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
# For the most part. We pretty much followed the Pseudocode and were able to get the first array done. The non-destructive array took a little longer because we initially thought we could just copy/paste the solution for the destructive.
 
## Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
# No. The destructive array worked after a few edits, but the non-destructive didn't. We encountered a bunch of errors that at first seem related to the first solution. Then we realized we needed to create  new array for the non-destructive code. That pretty much solved our problem.
 
## When you refactored, did you find any existing methods in Ruby to clean up your code?
# Yes. We discovered the fill method which allows the user to fill the array with given block

## How readable is your solution? Did you and your pair choose descriptive variable names?
# It's readable. We used generic names since that seemed to fit the parameters that were given in the challenge.

## What is the difference between destructive and non-destructive methods in your own words?
# Destructive methods alter the original input whereas non-destructive methods create new inputs and modify those, leaving the original intact.

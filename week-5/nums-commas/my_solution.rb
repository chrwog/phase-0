# Numbers to Commas Solo Challenge

# I spent [3.5] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# input: integer
# output: comma separated ineger as a string
# steps:
# Define a method with one parameter
# convert the parameter into a string
# separate the string into individual characters
# Get the number of elements in the array and put them into a variable
	# if the number of elements divided by 3 = a remainder of 1
	# 	start commas at index 0 
	# 	use a variable to count number of elements
	# 	add 3 to index zero to find next index to add comma
	# if the number of elements divided by 3 = a remainder of 2
	# 	start commas at index 1
	# if the number of elements can be divided by 3
	#   start commas at index 2
	# To fix commas for up to 100,000
	# 	if index is last in the array, don't add comma
	# else 
	# 	start commas at 2
# put characters into new string
# return string


# 1. Initial Solution

# def separate_comma(number)
#   number_string = String.new
#   number_string = number.to_s
#   ary = number_string.split(//)
  
#   index_selector = Array.new
#   index_selector = [0,1,2]
#   while ary.size % 3 == 1 && index_selector[0] < ary.size
#       ary[index_selector[0]]="#{ary[index_selector[0]]},"
#       index_selector[0] += 3
#   end


#     while ary.size % 3 == 2 && index_selector[1] < ary.size
#       ary[index_selector[1]]="#{ary[index_selector[1]]},"
#       index_selector[1] += 3
#     end
  
#     while ary.size % 3 == 0 && index_selector[2] < ary.size
#       ary[index_selector[2]]="#{ary[index_selector[2]]},"
#       index_selector[2] += 3
#     end


#   final = String.new
#   final = ary.join('')
#   final.chop
  
#   end


# 2. Refactored Solution

def separate_comma(number)
  ary = number.to_s.split(//)
  index_selector = [0,1,2]

  while ary.size % 3 == 1 && index_selector[0] < ary.size
      ary[index_selector[0]]="#{ary[index_selector[0]]},"
      index_selector[0] += 3
  end


  while ary.size % 3 == 2 && index_selector[1] < ary.size
  	ary[index_selector[1]]="#{ary[index_selector[1]]},"
    index_selector[1] += 3
  end
  
  while ary.size % 3 == 0 && index_selector[2] < ary.size
    ary[index_selector[2]]="#{ary[index_selector[2]]},"
    index_selector[2] += 3
  end

  ary.join('').chop
    
  end


# 3. Reflection

## What was your process for breaking the problem down? What different approaches did you consider?
# I first looked at what the input and output needed to be. I then thought about the patterns that would be present in all of the different lengths of numbers.
# I typed out a few numbers and recognized a pattern correlating to an array index number and where the commas should go.
# I thought about using an array, hash, reversing the number, I lot of things came to mind. Since this only dealt with numbers, I focused on using math to figure out where the commas should go.
# I'm sure there are more efficient methods, but I was able to make it work.

## Was your pseudocode effective in helping you build a successful initial solution?
# Yes my pseudocode was effective in helping find a solution. 

## What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
# I learned about the .size method and the split method. Ruby docs is a bit hard to read, but since they have a bunch of examples I was able to figure out how to use them.
# Since the methods I found were based off of my pseudocode, it didn't really change the way I went about things.

## How did you initially iterate through the data structure?
# I used while statements and a 2nd array to select the number to add the comma.

## Do you feel your refactored solution is more readable than your initial solution? Why?
# Yes, although I didn't change any of the methods. I got rid of some of the unnecessary lines of code and repeating elements. I also fixed some of the formatting spacing so it's easier to read. 
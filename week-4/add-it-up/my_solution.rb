# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: An array of numbers
# Output: Sum of numbers
# Steps to solve the problem.

# create an empty variable
# create a for loop
# set a variable for the range of the array
# added array elements with variable 


# 1. total initial solution
def total(array)
 a = 0
  for i in 0...array.length
   a = a + array[i]
  end
  return a
end

# 3. total refactored solution

def total(array)
  array.inject {|sum, a| sum + a }
end

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: An array of strings
# Output: An English sentence.

# Steps to solve the problem.

# Capatalize first element in string 
# Combine everything as strings
# Add in spaces and period

# 5. sentence_maker initial solution

def sentence_maker(array)
 sentence = array[0].capitalize
  for w in 1...array.length
   sentence = sentence + " " + array[w].to_s
  end
  return sentence + "."
end

# 6. sentence_maker refactored solution

def sentence_maker(array)
  array.join(" ").capitalize + "."
end



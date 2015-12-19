# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself ].
# I spent [1.25] hours on this challenge.

# Pseudocode

# Input:  An array of strings
# Output: Random String, number of sides
# Steps: When creating a new die, if the number of sides is less than one, return an error
# Create the number of sides of the die based on the number of strings in the array
# return the number of sides
# When you roll the dice, return one of the strings randomly
# return the randomly selected strings



# Initial Solution

# class Die
#   def initialize(labels)
#   	if labels.count < 1
#   		raise ArgumentError.new ("Minimum Sides is 1")
#   	end
#   	@sides = labels.count
#   	@roll 
#   	@labels = labels
#   end

#   def sides
#   	@sides
#   end

#   def roll
#   @roll = @labels[rand(@labels.length)]
#   end
# end



# Refactored Solution

class Die
  def initialize(labels)
  	if labels.count < 1
  		raise ArgumentError.new ("Minimum Sides is 1")
  	end
  	@sides = labels.count
  	@roll = labels
  end

attr_reader :sides 

  def roll
  	@roll.sample
  end
end








# Reflection

# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
# The main difference is figuring out how to access a random value from the array. Whereas the last challenge you could just pick a random integer from 1 to the # of sides.
# The logic didn't change, just in input.

# What does this exercise teach you about making code that is easily changeable or modifiable?
# It taught me that by using good, descriptive variables and refactoring the code, you can reuse code to solve a different problem.

# What new methods did you learn when working on this challenge, if any?
# I learned about the sample method. It worked perfectly!

# What concepts about classes were you able to solidify in this challenge?
# It solidified the whole higher level thing. classes work very similarly to methods, except they sit higher in the hierarchy.
# I also have a better understanding of the difference between an instance variable and local variable.
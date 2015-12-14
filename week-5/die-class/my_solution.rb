# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: integer for number of sides, .sides, .roll
# Output: number of sides, random number betwee 1 and the # of sides
# Steps:
# create Die class
# if sides is less than 1 raise an argument error
# initialize sides variable	
# create class methods .sides and .roll 


# 1. Initial Solution

# class Die
#   def initialize(sides)
#   	if sides < 1
#   		raise ArgumentError.new("Minimum Sides is 1")
#   	end
#     @sides = sides

#   end

#   def sides
#     return @sides
#   end

#   def roll
#     rand(1..@sides)
#   end
# end



# 3. Refactored Solution

class Die
  def initialize(sides)
  	if sides < 1
  		raise ArgumentError.new("Minimum Sides is 1")
  	end
    @sides = sides
  end

  attr_reader :sides

  def roll
    rand(1..@sides)
  end
end





# 4. Reflection

## What is an ArgumentError and why would you use one?
# An ArgumentError is used for catching errors in the user input during the calling of an object.
# You would use one when the argument used for an object requires specific parameters.

## What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
# The ArgumentError object and attr_reader method. I was successful in implementing both of them on the first try for once.

## What is a Ruby class?
# A Ruby class is a set of instructions or blueprints that can be used by an object.

## Why would you use a Ruby class?
# You would use a Ruby class to quickly retrieve methods and manipulate data in the object. 

## What is the difference between a local variable and an instance variable?
# Local variables reside in an object's method and disappear with the method.
# An instanced variable is stored in the class and can be called by any method in the class.
# Also instance variables keep their value between methods.

## Where can an instance variable be used?
# They can be used in different methods within the class. 
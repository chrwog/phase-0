# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [1.25] hours on this challenge.

# Pseudocode

# Input: integer
# Output: game solved? true or false
# Steps:
# initialize class with answer as integer
# create an instance method called guess that takes an input and returns the symbol :high if the guess is larger than the answer, or :correct or low.
# create an instance method called solved? which returns true if the most recent guess was correct else false.

# Initial Solution

# class GuessingGame
#   def initialize(answer)
#     if answer.is_a?(Integer) != true
#     	raise ArgumentError.new ("Answer must be an integer.")
#     end
#     @answer = answer
#   end

#   def guess(num)
#   	@num = num
#   	if num < @answer
#   		return :low
#   	elsif num > @answer
#   		return :high
#   	else num == @answer
#   		return :correct
#   	end
#   end
  
#   def solved?
#   	if @num == @answer
#   		return true
#   	else
#   		return false
#   	end
#   end
# end




# Refactored Solution
class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(num)
  	@num = num
  	if num < @answer
  		return :low
  	elsif num > @answer
  		return :high
  	else num == @answer
  		return :correct
  	end
  end
  
  def solved?
  	if @num == @answer
  		 true
  	else
  		 false
  	end
  end
end





# Reflection

# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
# The first thing I can think of is Microwave. Instance variables would be the different types of food you put in the microwave.
# The methods represent the different options a microwave has. Cook, Defrost, timer, etc.

# When should you use instance variables? What do they do for you?
# You should use instance variables when you need to manipulate the same variable with different methods.
# They allow for more efficient coding since you don't have to ask for user input in every method.
# You can just use the input that was already given and used in a different method. This is very powerful.

# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with? 
# Flow control is used to control the outcome or result of the program based off of specific conditions, given the user input.
# Flow control is manipulated with If/else statements and similar commands.
# I didn't have much trouble using flow control with this lesson, although some other challenges in the past have been a challenge.
# I usually struggle with adding counters and/or nested statements.

# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
# I think this code required the use of symbols because it's faster than strings and to get us comfortable using them.
# The benefits of using symbols is it's faster to compute than strings, they're immutable, and are unique.

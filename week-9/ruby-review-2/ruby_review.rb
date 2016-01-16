# I worked on this challenge [by myself].
# This challenge took me [.5] hours.


# Pseudocode
# input: Array
# output: modified Array
# Steps:
# Using the values of the input array, change multiples of 3 to the string "Fizz" 5 to "Buzz" 15 to "FizzBuzz"
# Assign the array to a variable
# iterate through the array
# 	if number is divisible by 15 without a remainder, change that value to "FizzBuzz" destructively
# 		if number is divisible by 5, "Buzz"
# 			if number is divisible by 3, "Fizz"
# return the modified array



# Initial Solution

# def super_fizzbuzz(array)
#   no_fizz_ary = []
#   no_fizz_ary = array

#    no_fizz_ary.map! do |x|
#     if x % 15 == 0
#       x = "FizzBuzz"
#     elsif x % 5 == 0
#       x = "Buzz"
#     elsif x % 3 == 0
#       x = "Fizz"
#         else
#           x
#       end
#   end
#   return no_fizz_ary
# end



# Refactored Solution

def super_fizzbuzz(array)
  fizz_ary = array

   fizz_ary.map! { |x|
    if x % 15 == 0
      x = "FizzBuzz"
    elsif x % 5 == 0
      x = "Buzz"
    elsif x % 3 == 0
      x = "Fizz"
        else
          x
      end }
   fizz_ary
end




# Reflection

# What concepts did you review in this challenge?
# Iterating through an array in Ruby

# What is still confusing to you about Ruby?
# This challenge was pretty straightforward. It was a good review. It took a few tries to get the syntax down.

# What are you going to study to get more prepared for Phase 1?
# I'll probably focus more on JavaScript since im weaker in that language than Ruby

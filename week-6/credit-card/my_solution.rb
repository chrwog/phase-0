# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [with: Brigitte Kozena ].
# I spent [3] hours on this challenge.

# Pseudocode

# Input: Credit Card Number
# Output: CC number is Valid or Not
# Steps:
# Check for 16 digit input with ArgumentError.
# Double every other digit until reaching the first digit.
# 	Store input in array and use index values to determine which numbers need to be doubled
# 	Use a counter to iterate through the array
# Sum all the untouched digits and the doubled digits
# 	Combine the array numbers into one number/index. Convert to a string, then strip the numbers into single digit array values
# 	sum all the values
# Determine True/False valid credit Card
# 	If sum divided by 10 with no remainder (modulo 10), then it is a valid credit card.



# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

  #   class CreditCard 
      
  #     def initialize (credit_number)

  #       if Math.log10(credit_number).ceil  != 16
  #         raise ArgumentError.new ("Credit Card must be 16 digits")
  #       end
        
  #     @credit = credit_number  
  #     end

  #     def check_card
  #       index = 0
  #       credit_array = []
        
  #       while @credit > 0 
  #         digit = @credit % 10
  #         @credit /= 10
  #         if index.odd?
  #           digit += digit
  #         end
  #         index += 1
  #         credit_array << digit
  #       end
        
  #       credit_array.reverse
  #       print credit_array
        
  #       credit_string = credit_array.join
  #       p credit_string
        
  #       credit_new_array = credit_string.chars.to_a
        
  #       sum = 0 
  #       credit_new_array.map! do |number|
  #         sum += number.to_i
  #       end
        
  #       if sum.to_i % 10 == 0 
  #         return true  
  #       else 
  #         return false
  #       end
  #     end
  # end


# Refactored Solution
class CreditCard
	def initialize (credit_number)
        if Math.log10(credit_number).ceil  != 16
          raise ArgumentError.new ("Credit Card must be 16 digits")
        end
      @credit = credit_number  
    end

    def check_card
    	index = 0
    	credit_array = []
    	sum = 0

    	while @credit > 0 
    	  digit = @credit % 10
    	  @credit /= 10
    	  if index.odd?
    	    digit += digit
    	  end
    	  index += 1
    	  credit_array << digit
    	end

    	credit_string = credit_array.join.chars.to_a.reverse
    	
    	credit_string.map! {|number| sum += number.to_i}
    	
    	if sum.to_i % 10 == 0 
    	   true  
    	else 
    	   false
    	end
    end
end 

# Reflection

# What was the most difficult part of this challenge for you and your pair?
# The most difficult part was getting our methods to work together to get the result we wanted.
# We initially broke the steps down into a few methods. These all worked individually, but we couldn't get the right result using instance variables.
# Our solution was to take the code from the methods and combine it into the check_card method. Then we could use local variables and get the correct output.
# After researching some more, another solution would have been to call those methods within the check_card method, but since this code already works I'll leave it as is.

# What new methods did you find to help you when you refactored?
# We learned about the math method and how to round up using the .ceil method.
# We looked up a few methods during the initial coding like join and chars.
# I believe I've gotten better and writing DRY code and refactored a good portion of our code this way.
# I feel like I could refactor better, using more efficient methods, but we ran out of time to work on the code together.

# What concepts or learnings were you able to solidify in this challenge?
# I gained a better understanding of how rspec works, and how instance variables work.

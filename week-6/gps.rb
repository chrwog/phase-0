# Your Names
# 1)Chris Wong
# 2)No partner (solo)

# We spent [2] hours on this challenge.

# Bakery Serving Size portion calculator.

# def serving_size_calc(item_to_make, num_of_ingredients)
#   library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
#   error_counter = 3

#   library.each do |food|
#     if library[food] != library[item_to_make]
#       error_counter += -1
#     end
#   end

#   if error_counter > 0
#     raise ArgumentError.new("#{item_to_make} is not a valid input")
#   end

#   serving_size = library.values_at(item_to_make)[0]
#   remaining_ingredients = num_of_ingredients % serving_size

#   case remaining_ingredients
#   when 0
#     return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
#   else
#     return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
#   end
# end

## Refactored

def serving_size_calc(item_to_make, num_of_servings)
  bakery = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  
  if !bakery.has_key?(item_to_make)
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  serving_size = bakery[item_to_make]
  remaining_servings = num_of_servings % serving_size

  if remaining_servings == 0
     "Calculations complete: Make #{num_of_servings / serving_size} of #{item_to_make}"
  else
     "Calculations complete: Make #{num_of_servings / serving_size} of #{item_to_make}, you have #{remaining_servings} leftover servings. Suggested baking items: #{bakery.key(remaining_servings)}."
  end
end


p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection

#  What did you learn about making code readable by working on this challenge?
#  Use variable names that make sense for the program. You don't really need to use the return in ruby for certain lines. If you're using a lot of statements, try to find a method that does the work for you.

#  Did you learn any new methods? What did you learn about them?
#  I learned about the !variable.has_key? method. This reverses the boolean to run the block of code if it returns 'false' as opposed to 'true'

#  What did you learn about accessing data in hashes?
# I learned that there are many different ways to access and manipulate hashes. The key is finding the most efficient way of doing it.

# What concepts were solidified when working through this challenge?
# The concept of accessing parts of a hash and comparing it to parameters to get an output. Also comparing keys and values.

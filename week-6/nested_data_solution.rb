# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================

p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================

p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================

p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do |element|
  if element.kind_of?(Array)
    element.map! {|inner| inner += 5}
  else element += 5
    
  end
end
p number_array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.map! do |element|
  if element.kind_of?(Array)
    element.map! do |inner|
      if inner.kind_of?(Array)
        inner.map! {|inner_inner| inner_inner << "ly"}
      else
        inner << "ly"
      end
    end
  else
    element << "ly"
  end
end

p startup_names


## Reflection
# What are some general rules you can apply to nested arrays?
# One general rule for accessing a nested array is work from left to right when trying to figuring out what index to use. 
# Another rule is that if you want to iterate through multiple leveled nested arrays, you can essentially nest an if loop within another if loop to access the array.

# What are some ways you can iterate over nested arrays?
# We used the kind_of? method to iterate over a nested array. The kind_of method allowed us to check if the elements of the first array had any nested arrays in it.
# If it did, it would run the block of code.

# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
# We used the .map! method for the last and bonus exercises because we were both familiar with it.
# We used it because it allowed us to iterate through all of the nested arrays and return the original array with the changes.




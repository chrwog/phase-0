# Release 1: Pseudocode

# input: String of names
# output: Array of groups no smaller than three

# Steps:
# Convert list of names to array.
# split array into arrays of 5
# concatinate remainder into array
# push remainder into last group
# if remainder is group of two, push to last array
# flatten array


# Release 2: Initial Solution

# def acct_groups(names)
#   groups = Array.new
#   small_groups = Array.new
#   big_groups = Array.new
#   groups = names.split(', ')
  
#   groups.each_slice(5) do |a|
#     if a.length > 2
#       big_groups << a
#     else
#       small_groups << a
#     end
#   end
#   big_groups[big_groups.length-1].push(small_groups)
#   big_groups[big_groups.length-1].flatten!
  
  
#   p big_groups

# end

# acct_groups("todd, wenna, blaine, gary, axe, rose, tina, megan, jimmy, cole, zack, logan, rebecca")


# Release 4: Refactor

def acct_groups(names)
  small_groups = []
  big_groups = []

  names.each_slice(5) do |a|
    if a.length > 2
      big_groups << a
    else
      small_groups << a
    end
  end
  
  big_groups[big_groups.length-1].push(small_groups).flatten!
  p big_groups
end

acct_groups(["todd," "wenna", "blaine", "gary", "axe", "rose", "tina", "megan", "jimmy", "cole", "zack", "logan", "rebecca"])


# Release 6: Reflection

## What was the most interesting and most difficult part of this challenge?
# The most interesting was thinking about how to include the groups of less than three which also happen to be the most difficult part

## Do you feel you are improving in your ability to write pseudocode and break the problem down?
# It's getting a little better, but not where I'd like it to be.

## Was your approach for automating this task a good solution? What could have made it even better?
# I think it was a good solution. I could have made it even better by outputting a nicer return and refactoring better.

## What data structure did you decide to store the accountability groups in and why?
# I decided to use an array since we aren't really concerned with anything other than the names of people.
# If we had a bunch of different group names or some other data besides just the names of students I might have used a hash.

## What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
# I learned that If I changed the input to an array I could take out a line of code
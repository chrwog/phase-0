# NOTE!!! I could only submit one url for this assignment. The other ruby review I worked on for this challeng is here:
# https://github.com/chrwog/phase-0/blob/master/week-9/ruby-review-2/ruby_review.rb

# U2.W6: Testing Assert Statements

# I worked on this challenge [with: Breton Burnett].


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs

# Input: Anything (string, integer, etc)
# Output: runtime error unless assert passes the name variable.
# 1. Give the variable name a value.
# 2. Call the assert method with parameters we want to check.

# 3. Copy your selected challenge here

def separate_comma(random_num)

  if random_num >= 1000 && random_num < 10000
    random_num = (random_num.to_s).split(//,2)
    random_num = random_num.join(",")
  elsif random_num >= 10000 && random_num < 100000
    random_num = (random_num.to_s).split(//)
    random_num = random_num.insert(2,",")
    random_num = random_num.join
  elsif random_num >= 100000 && random_num < 1000000
    random_num = (random_num.to_s).split(//)
    random_num = random_num.insert(3,",")
    random_num = random_num.join
  elsif random_num >= 1000000 && random_num < 10000000
    random_num = (random_num.to_s).split(//)
    random_num = random_num.insert(4,",")
     random_num = random_num.insert(1,",")
    random_num = random_num.join
  elsif random_num >= 10000000 && random_num < 100000000
    random_num = (random_num.to_s).split(//)
    random_num = random_num.insert(5,",")
    random_num = random_num.insert(2,",")
    random_num = random_num.join
  else random_num < 1000
    random_num
  end
  random_num
end


# 4. Convert your driver test code from that challenge into Assert Statements

def assert
  raise "Assertion failed!" unless yield
end

test = separate_comma(1000)

assert {test == "1,000"}
assert {test == "1000"}

# 5. Reflection

# What concepts did you review in this challenge?
# I learned about the assert method, as well as unless and yield

# What is still confusing to you about Ruby?
# The way some methods work takes a few tries to get it to work the way I want.
# I want to get to the point where even if I don't know the method,
# I can understand the description and be able to implement it from the get go.

# What are you going to study to get more prepared for Phase 1?
# I'm going to try to get the syntax down pat. I'm pretty comfortable with it,
# but sometimes my mind draws a blank and I have to look up past challenges.
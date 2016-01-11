# Reverse Words


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode
# input: String
# output: reverse each word in the sentence.
# create method that inputs a string.
# split the string by spaces into an array
# get the length of the sentence to iterate that many times
# reverse each value in the array
# combine strings back with spaces inbetween




# Initial Solution
# def reverse_words(sentence)
# 	words = sentence.split(' ')
# 	reverse_ary = []
# 	sentence_length = words.length
	
# 	sentence_length.times do |x|
# 		reverse_ary[x] = words[x].reverse
# 	end
# 	reverse_ary.join(" ")
# end

# reverse_words("This is a test")


# Refactored Solution
def reverse_words(sentence)
	words = sentence.split(' ')
	reverse_ary = []
	
	words.length.times {|x| reverse_ary[x] = words[x].reverse}
	reverse_ary.join(" ")
end



# Reflection

# What concepts did you review or learn in this challenge?
# Since it's been a couple of weeks since I last used Ruby, this was a nice refresher. I reviewed how to iterate through an array in Ruby.
# I also learned the .times method for determining how many times to go through the iteration.
# Since I had the number of elements in the array, I had to figure out how to iterate through it that many times.

# What is still confusing to you about Ruby?
# It's hard going back and forth between JavaScript and Ruby. When I first looked at the challenge, my mind was a complete blank.
# I had to look through some of my old assignments to jog my memory of how to do what I wanted to do in the pseudocode.

# What are you going to study to get more prepared for Phase 1?
# I'm going to try to go through all of the bonus challenges that I missed over the weeks and really read up on ruby and javascript.
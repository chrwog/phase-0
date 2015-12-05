puts 'Hi! what\'s your first name?'
first_name = gets.chomp

puts 'What\'s your middle name?'
middle_name = gets.chomp

puts 'What\'s your last name?'
last_name = gets.chomp

puts 'Hi ' + first_name + ' ' + middle_name + ' ' + last_name + '. Nice to meet you.'

puts 'What\'s your favorite number?'

number = gets.chomp.to_i + 1

puts number.to_s + ' is bigger and better.'

#4.3.1 link https://github.com/chrwog/phase-0/blob/master/week-4/address/my_solution.rb
#4.3.2 link https://github.com/chrwog/phase-0/blob/master/week-4/math/my_solution.rb

#How do you define a local variable?
#variable_name = assignment

#How do you define a method?
#def method_name(parameters)

#What is the difference between a local variable and a method?
# A variable is used to refer back to an object. The variable can also be reassigned to a different object. A method takes action or actions on variables and/or objects.

#How do you run a ruby program from the command line?
#=>ruby filename.rb

#How do you run an RSpec file from the command line?
#=>rspec filename.rb

#What was confusing about this material? What made sense?
#Reading the errors when pushing a file through rspec was confusing/ overwhelming at first. Once I actually tried to look at it, it started to make sense. The basic ideas of variables and methods and how they relate to eachother makes sense. It's like english nouns and verbs as explained in the book. I'm sure things will get way more complicated soon enough though.

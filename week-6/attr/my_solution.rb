#Attr Methods

# I worked on this challenge [by myself]

# I spent [#] hours on this challenge.

# Pseudocode

# Input: Name as a string, NameData inside Greetings class
# Output: Greeting with name
# Steps:
# Initialize @name variable with my name to NameData class
# Use NameData class within greetings class to add a greetings string to the name
# create method hello that prints a string greeting with the NameData class info

class NameData
  def name
    return "Chris"
  end
end

class Greetings
  def initialize
    @student = NameData.new
  end

  def hello
    puts "Hello #{@student.name}! How wonderful to see you today."
  end
end

# Driver Code
greet = Greetings.new
greet.hello

# Reflection

# Release 1:

# What are these methods doing?
# initialize sets the @age, @name, @occupation
# print_info prints the age, name and occupation
# what_is_age returns the age
# what_is_name returns the name
# change_my_name changes the @name instance variable
# what_is_occupation returns the occupation
# change_my_occupation changes the @occupation instance variable

# How are they modifying or returning the value of instance variables?
# Some of the methods like change_my_age require a parameter which replaces the value of the associated instance variable.
# The other methods like what_is_age is simply returning the current set age by using the @age instance variables value.

# Release 2:

# What changed between the last release and this release?
# What_is_age method was commented out because of the use of attr_reader :age

# What was replaced?
# what_is_age method was replaced with attr_reader :age

# Is this code simpler than the last?
# It should be faster now. I'm not sure if it's necessarily simpler since it requires knowlege of the attr_reader method.

# Release 3:

# What changed between the last release and this release?
# change_my_age method was commented out, attr_writer :age was added. You can now change the age by using .age = some_number

# What was replaced?
# change_my_age was replaced with attr_writer :age

# Is this code simpler than the last?
# Yes because you no longer need to have the change_my_age method.

# Release 6:
# What is a reader method?
# The reader method returns the value of a variable outside of the class but doesn't change it

# What is a writer method?
# The writer method can change the value of the variable outside the class but isn't readable

# What do the attr methods do for you?
# They allow the simplification of classes by reducing the number of methods you need to write. 

# Should you always use an accessor to cover your bases? Why or why not?
# No because there could be times when you don't want to have the option to write or read an instance variable.
# Plus liberal use of the accessor method could lead to security risks and tough bugs to track down.

# What is confusing to you about these methods?
# I'm still trying to wrap my head around when to use each class. I understand what they do, but when I'm writing my own code,
# I'm not really sure which one to use without trial and error.

# Analyze the Errors

# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#{}"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

#def cartman_hates(thing)
#  while true
#    puts "What's there to hate about #{thing}?"
#end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# The interpreter says the error is on line 170.
# 3. What is the type of error message?
# syntax error
# 4. What additional information does the interpreter provide about this type of error?
# The interpreter was expecting an "end" after the input.
# 5. Where is the error in the code?
# The error is expecting an "end" at the end of the file
# 6. Why did the interpreter give you this error?
# The interpreter uses the "end" encountered on line 16 for the while, so it goes to the bottom of the file, line 170 looking for the missing def "end"

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
# Line 35
# 2. What is the type of error message?
# undefined local variable or method (NameError)
# 3. What additional information does the interpreter provide about this type of error?
# 'south_park' has a NameError in main Object
# 4. Where is the error in the code?
# The error is surrounding 'south_park'
# 5. Why did the interpreter give you this error?
# south_park needs to be declared as a variable or a method in the file. Main:Object is refereing to the top level object which is the file itself.

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
# Line 50
# 2. What is the type of error message?
# Undefined method (NoMethodError)
# 3. What additional information does the interpreter provide about this type of error?
# 'cartman' is undefined in the main:Object
# 4. Where is the error in the code?
# Inside the () of cartman()
# 5. Why did the interpreter give you this error?
# The interpreter needs to know the parameters of the method cartman.

# --- error -------------------------------------------------------

#def cartmans_phrase
#  puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# 69
# 2. What is the type of error message?
# Wrong number of arguments (ArgumentError)
# 3. What additional information does the interpreter provide about this type of error?
# There's 1 for 0 arguments
# 4. Where is the error in the code?
# In the parantheses of cartmans_phrase
# 5. Why did the interpreter give you this error?
# Since the method is only suppose to puts "I'm not fat; I'm big-boned!" adding the parameter ('I hate Kyle') causes the error.

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
#  puts offensive_message
#end

#cartman_says

# 1. What is the line number where the error occurs?
# Line 84
# 2. What is the type of error message?
# Wrong number of arguments (ArgumentError)
# 3. What additional information does the interpreter provide about this type of error?
# There's 0 for 1 arguments
# 4. Where is the error in the code?
# The error is after cartman_says
# 5. Why did the interpreter give you this error?
# The interpreter is expecting a value given for the offensive_message parameter of the cartman_says method.



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
#  puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# Line 105
# 2. What is the type of error message?
# Wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
# There's 1 for 2 arguments
# 4. Where is the error in the code?
# The error is following 'A meteor the size of the earth is about to hit Wyoming!'
# 5. Why did the interpreter give you this error?
# The cartmans_lie method needs two parameters. Only one is given.

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# Line 124
# 2. What is the type of error message?
# (TypeError)
# 3. What additional information does the interpreter provide about this type of error?
# String can't be changed into a number (Fixnum)
# 4. Where is the error in the code?
# After the *
# 5. Why did the interpreter give you this error?
# The interpreter is trying to copy 5 "Respect my authoritay!" times. You need to have the string first then the number.

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# Line 139
# 2. What is the type of error message?
# (ZeroDivisionError) can't divide by zero
# 3. What additional information does the interpreter provide about this type of error?
# Line divided by 0
# 4. Where is the error in the code?
# 20/0
# 5. Why did the interpreter give you this error?
# It is not possible to divide something by zero arithmetically.

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# Line 155
# 2. What is the type of error message?
# Cannot load file (Loaderror)
# 3. What additional information does the interpreter provide about this type of error?
# It gives the specific file name and path it can't find.
# 4. Where is the error in the code?
# The error is in require_relative.
# 5. Why did the interpreter give you this error?
# The cartmans_essay.md file does not exist in the same directory as this file.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
# Which error was the most difficult to read?
# The 2nd one because it said the line error was at 170.
# How did you figure out what the issue with the error was?
# I looked at the method and read it line by line. I saw that the method was missing an "end".
# Were you able to determine why each error message happened based on the code?
# Yes 
# When you encounter errors in your future code, what process will you follow to help you debug?
# I'll look at where the line the interpretor says the error is. I'll also look at what the type of error has occured. Finally check the code in question as the interpretor might get confused at where the actual error is, like in the 2nd error example.
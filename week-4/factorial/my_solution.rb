# Factorial

# I worked on this challenge [With Thomas Huang].


# Your Solution Below
def factorial(number)
  if number == 0 
    return 1
  end
  holder = number
  while number > 1
    number = number-1
    holder = number * holder
  end
  return holder
end

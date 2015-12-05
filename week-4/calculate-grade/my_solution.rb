# Calculate a Grade

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def get_grade(score)
    
  if score >= 90
    p "A"
  elsif score <= 89 && score >= 80
    p "B"
  elsif score <= 79 && score >= 70
    p "C"
  elsif score <= 69 && score >= 60
    p "D"
  else score < 60
    p "F"
  end
end
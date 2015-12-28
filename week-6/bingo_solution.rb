# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
#   Use two variables to = a random letter from bingo, and a number from 1-100
#   convert letter variable to symbol

# # Check the called column for the number called.
#   use symbols for each column (index of each array in array)
#   if symbol from above method matches the column symbol, check the number


# # If the number is in the column, replace with an 'x'
  

# # Display a column to the console
  

# # Display the board to the console (prettily)
#   Use line breaks between each set of array to make it look pretty

# # Initial Solution

# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#   end

#   def generate
#     random_number = Random.new
#     place_holder = random_number.rand(1..100)
#     @number = place_holder
#     @letter = ['b','i','n','g','o'].sample
#     # @number = 51
#     # @letter = 'o'
#   end

#   def column_check
#     if @letter == 'b'
#       #check index 0 of each array
#       @index_checker = 0
#     elsif @letter == 'i'
#       @index_checker = 1
#     elsif @letter == 'n'
#       @index_checker = 2
#     elsif @letter == 'g'
#       @index_checker = 3
#     elsif @letter == 'o'
#       @index_checker = 4
#     end   
#   end

#   def x_replace
#     if @index_checker == 0
#       @bingo_board.each do |element|   
#         if element[0] == @number
#           element[0] = 'x' 
#         end
#       end
#     end
    
#     if @index_checker == 1
#       @bingo_board.each do |element|
#         if element[1] == @number
#           element[1] = 'x'
#         end
#       end
#     end
        
#     if @index_checker == 2
#       @bingo_board.each do |element|  
#         if element[2] == @number
#           element[2] = 'x'
#         end
#       end
#     end
    
#     if @index_checker == 3
#       @bingo_board.each do |element|   
#         if element[3] == @number
#           element[3] = 'x' 
#         end
#       end
#     end

#     if @index_checker == 4
#       @bingo_board.each do |element|   
#         if element[4] == @number
#           element[4] = 'x' 
#         end
#       end
#     end
#   end


#   def show_board
#     p "It's time for bingo!"
#     p @bingo_board[0]
#     p @bingo_board[1]
#     p @bingo_board[2]
#     p @bingo_board[3]
#     p @bingo_board[4]
#   end

# end

# Refactored Solution
class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def generate
    @number = rand(1..100)
    @letter = ['b','i','n','g','o'].sample
  end

  def column_check
    if @letter == 'b'
      @index_checker = 0
    elsif @letter == 'i'
      @index_checker = 1
    elsif @letter == 'n'
      @index_checker = 2
    elsif @letter == 'g'
      @index_checker = 3
    elsif @letter == 'o'
      @index_checker = 4
    end   
  end

 def x_replace
    @bingo_board.each do |element|   
        if @index_checker == 0 && element[0] == @number
          element[0] = 'x'
        elsif @index_checker == 1 && element[1] == @number
          element[1] = 'x'
        elsif @index_checker == 2 && element[2] == @number
          element[2] = 'x'
        elsif @index_checker == 3 && element[3] == @number
          element[3] = 'x'
        elsif @index_checker == 4 && element[4] == @number
          element[4] = 'x'
        end
      end
  end


  def show_board
    p "It's time for bingo!"
    p "The next square is #{@letter}#{@number}!"
    p @bingo_board[0]
    p @bingo_board[1]
    p @bingo_board[2]
    p @bingo_board[3]
    p @bingo_board[4]
  end

end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.generate
new_game.column_check
new_game.x_replace
new_game.show_board

#Reflection

# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
# It was difficult to write the pseudocode since there were a lot of steps that I wasn't aware of until I ran into them.
# My style could be better. I think I'm using to broad of strokes when pseudocoding. I need to add more detail to the steps

# What are the benefits of using a class for this challenge?
# The benefits are being able to randomly generate a number and column and use these numbers in a different method.

# How can you access coordinates in a nested array?
# You can access the coordinates by iterating through the array or using flow control to find the coordinates

# What methods did you use to access and modify the array?
# I used the .each method and other expressions.

# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
# I learned about the transpose method. I didn't use it because it would have required  major rework, but if I had to do it all over again I would try to implement the method.
# It is used to take nested arrays and group them by the indexes. It's called with .transpose.

# How did you determine what should be an instance variable versus a local variable?
# If the variable is going to be used in multiple methods within the class, an instance variable should be used.

# What do you feel is most improved in your refactored solution?
# Identifying what can be refactored and how to do it.

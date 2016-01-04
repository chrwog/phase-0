# Virus Predictor

# I worked on this challenge [with: LeeAnne Hawley ].
# We spent [2] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative is a link to a file in the same directory
# require is a link to a file outside of the directory and requires a path
require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  DENSITY_FACTORS = {
      0 => 0.05,
     50 => 0.1,
    100 => 0.2,
    150 => 0.3,
    200 => 0.4
  }

  def predicted_deaths
    number_of_deaths = 0

    DENSITY_FACTORS.each do |density_limit, factor|
      if @population_density >= density_limit
        number_of_deaths = (@population * factor).floor
      end
    end
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end

  DENSITY_SPEED = {
      0 => 2.5,
     50 => 2,
    100 => 1.5,
    150 => 1,
    200 => 0.5
  }

  def speed_of_spread
    num_months = 0

    DENSITY_SPEED.each do |density_limit, speed|
       if @population_density >= density_limit
        num_months = speed
      end
    end

    puts " and will spread across the state in #{num_months} months.\n\n"
  end
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects


#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
# The difference is the first key is a string while the others are symbols.
# What does require_relative do? How is it different from require?
# require_relative links an additional file to the current one through a specific path. Require is in the same folder 
# What are some ways to iterate through a hash?
# You can iterate using an if loop and a counter and index. You can also iterate using a method like .map or .each.
# When refactoring virus_effects, what stood out to you about the variables, if anything?
# There was a lot of repeating of variables. I feel like this could be reduced to elminiate some of the lines of code.
# What concept did you most solidify in this challenge?
# Iterating through nested hash arrays.
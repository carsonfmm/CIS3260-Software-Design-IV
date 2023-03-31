require_relative 'Randomizer'

# Inherits from Randomizer
# Methods support the Die object and its attributes
class Die < Randomizer

  def initialize(sides, colour)
    @die_sides = sides
    @die_colour = colour
    @randomization_counter = 0
  end

  def randomize()
    roll

    return self
  end

  def colour()
    @die_colour
  end

  def sides()
    @die_sides
  end

  # Rolls the Die
  def roll()
    die_roll = rand(@die_sides)
    if die_roll == nil
      @die_sideup = nil
    else
      @die_sideup = die_roll + 1
    end

    @randomization_counter = @randomization_counter + 1

    return self
  end

  def sideup()
    @die_sideup
  end

  def reset()
    @die_sideup = nil
    @randomization_counter = 0
    return self
  end

  def result()
    @die_sideup
  end

end
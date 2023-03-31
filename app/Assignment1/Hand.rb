require_relative 'RandomizerContainer'

# Inherits from RandomizerContainer
# Methods support the Hand object
class Hand < RandomizerContainer

  def next()
    rand1 = Randomizer.new
    rand1 = @container.pop

    return rand1
  end

  def empty()
    @container = []

    return nil
  end

end
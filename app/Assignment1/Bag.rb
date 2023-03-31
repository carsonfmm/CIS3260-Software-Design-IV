require_relative 'RandomizerContainer'

# Inherits from RandomizerContainer
# Methods support the Bag object
class Bag < RandomizerContainer

  def empty()
    hand_obj = Hand.new

    @container.each do |i|
      hand_obj.store(i)
    end
    
    @container = []

    return hand_obj
  end

end
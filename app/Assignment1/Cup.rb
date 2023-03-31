require_relative 'RandomizerContainer'

# Inherits from RandomizerContainer
# Methods support the Cup object
class Cup < RandomizerContainer

  attr_accessor :container

  def throw()
    @the_results = Results.new(@container)

    # Using the attribute accessor to access the variable outside the class scope
    @container.each do |i|
      i.randomize
      @the_results.container.append(i)
    end

    return @the_results
  end

  def load(hand)
    # Using the attribute accessor to access the variable outside the class scope
    hand.container.each do |i|
      @container.append(i)
    end

    hand = []

    return self
  end

  def empty()
    @container = []
    hand_obj = Hand.new

    return hand_obj
  end

end
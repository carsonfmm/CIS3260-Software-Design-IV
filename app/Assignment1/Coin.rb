require_relative 'Randomizer'

# Inherits from Randomizer
# Methods support the Coin object and its attributes
class Coin < Randomizer

  def initialize(denomination)
    @coin_denom = denomination
    @randomization_counter = 0
  end

  def randomize()
    flip

    return self
  end

  def denomination()
    @coin_denom
  end

  # Flips the Coin
  def flip()
    coin_flip = rand(2)

    if coin_flip == 0
      @coin_sideup = :H
    elsif coin_flip == 1
      @coin_sideup = :T
    else
      @coin_sideup = nil
    end

    @randomization_counter = @randomization_counter + 1

    return self
  end

  def sideup()
    @coin_sideup
  end

  def reset()
    @coin_sideup = nil
    @randomization_counter = 0

    return self
  end

  def result()
    @coin_sideup
  end

end
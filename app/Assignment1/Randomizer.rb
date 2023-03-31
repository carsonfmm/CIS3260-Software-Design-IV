# An abstract class that stores common methods for Die and Coin
class Randomizer

  def randomize()
    STDERR.puts "Error: randomize()"
  end

  def result()
    STDERR.puts "Error: result()"
  end

  def calls()
    @randomization_counter
  end

  def reset()
    STDERR.puts "Error: reset()"
  end

end
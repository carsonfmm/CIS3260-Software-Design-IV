# Methods support the Player object
class Player

  attr_accessor :container

  def initialize(name)
    @player_name = name
    @container = []
    @player_bag = Bag.new
    @player_cup = Cup.new
    @the_results = []
  end

  def name()
    @player_name
  end

  def store(item)
    @container.append(item)

    return self
  end

  def move_all(rc)
    # Using the attribute accessor to access the variable outside the class scope
    rc.container.each do |i|
      i.reset
      @player_bag.store(i)
    end

    return self
  end

  def load(description)
    hand_obj = Hand.new
    hand_obj = @player_bag.select(description, :all)

    # Using the attribute accessor to access the variable outside the class scope
    hand_obj.container.each do |i|
      @player_cup.store(i)
    end

    return self
  end

  def throw()
    @temp_results = Results.new(@player_cup)
    @player_cup.throw
    @the_results.append(@temp_results)

    return @the_results
  end

  def replace(description)
    hand_obj = Hand.new
    hand_obj = @player_cup.select(description, :all)

    # Using the attribute accessor to access the variable outside the class scope
    hand_obj.container.each do |i|
      i.reset
      @player_bag.store(i)
    end

    return self
  end

  def clear()
    @the_results = []

    return self
  end

  def tally(description)
    total_tally = []

    @the_results.each do |i|
      i.description(description)
      total_tally.append(i.tally)
    end

    return total_tally
  end

  def sum(description)
    total_sum = []

    @the_results.each do |i|
      i.description(description)
      total_sum.append(i.sum)
    end

    return total_sum
  end

  def results(description, throw)
    sideup_results = []
    counter = @the_results.count - 1
    tracker = 0

    @the_results.each do |i|
      tracker = tracker + 1
    end

    if throw <= tracker
      @the_results.each do |i|
        if counter == throw
          i.description(description)
          sideup_results = i.results
        end
        counter = counter - 1
      end
    else
      return nil
    end

    return sideup_results
  end

end
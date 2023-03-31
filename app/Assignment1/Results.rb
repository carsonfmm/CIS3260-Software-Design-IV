# Methods support the Results object
class Results

  attr_accessor :container

  def initialize(cup)
    @results_cup = cup
    @container = []
    @sideup_values = []
    @results_desc = nil
  end

  def description(description)
    @results_desc = description
  end

  # Storing the sideup values of the Randomizers recorded in the Results
  def results()
    hand_obj = Hand.new

    if @results_desc == nil
      # Using the attribute accessor to access the variable outside the class scope
      @results_cup.container.each do |i|
        @sideup_values.append(i.sideup)
      end
    else
      hand_obj = @results_cup.select_no_delete(@results_desc, :all)
      # Using the attribute accessor to access the variable outside the class scope
      hand_obj.container.each do |i|
        @sideup_values.append(i.sideup)
      end
    end

    return @sideup_values

  end

  # Storing the number of items that match the description of the Randomizers recorded in the Results
  def tally()
    hand_obj = Hand.new
    match_tally = 0

    if @results_desc == nil
      # Using the attribute accessor to access the variable outside the class scope
      @results_cup.container.each do |i|
        match_tally = match_tally + 1
      end
    else
      hand_obj = @results_cup.select_no_delete(@results_desc, :all)
      # Using the attribute accessor to access the variable outside the class scope
      hand_obj.container.each do |i|
        match_tally = match_tally + 1
      end
    end

    return match_tally
  end

  # Storing the sum of the Randomizers recorded in the Results
  def sum()
    hand_obj = Hand.new
    match_sum = 0

    if @results_desc == nil
      # Using the attribute accessor to access the variable outside the class scope
      @results_cup.container.each do |i|

        if i.class.name == "Coin"
          # If sideup is :H, add 1 to the sum. If sideup is :T do not add to the sum
          if i.sideup == :H
            match_sum = match_sum + 1
          end
        else
          # Add the sideup value of the Die to the sum
          if i.sideup != nil
            match_sum = match_sum + i.sideup
          end
        end
      end
    else
      hand_obj = @results_cup.select_no_delete(@results_desc, :all)
      # Using the attribute accessor to access the variable outside the class scope
      hand_obj.container.each do |i|

        if i.class.name == "Coin"
          # If sideup is :H, add 1 to the sum. If sideup is :T do not add to the sum
          if i.sideup == :H
            match_sum = match_sum + 1
          end
        else
          # Add the sideup value of the Die to the sum
          if i.sideup != nil
            match_sum = match_sum + i.sideup
          end
        end
      end
    end

    return match_sum
  end

end
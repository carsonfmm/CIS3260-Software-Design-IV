# An abstract class that stores common methods for Bag, Hand and Cup
class RandomizerContainer

  attr_accessor :container

  def initialize()
    @container = []
  end

  def store(r)
    @container.append(r)

    return self
  end

  def store_all(l)
    l.each do |i|
      @container.append(i)
    end

    return self
  end

  def count()
    @container.length
  end

  # Using the attribute accessor to access the variable outside the class scope
  def move_all(rc)
    rc.container.each do |i|
      @container.append(i)
    end

    rc.empty_container

    return self
  end

  def empty_container()
    @container = []
  end

  def empty()
    STDERR.puts "Error: empty()"
  end

  # If only the description is included, then the default value for amt will be :all
  def select(description, amt=:all)
    hand_obj = Hand.new
    to_delete = []
    counter = 0
    index_tracker = 0

    if amt == :all
      amt = @container.length
    end

    # Check which objects match the description
    if description.length == 0 || description[:colour] != nil || description[:item] == :die || description[:sides] != nil
      index_tracker = 0
      @container.each do |i|
        if i.class.name == "Die"
          # If colour, sideup and sides match the description
          if description[:colour] == i.colour && description[:up] == i.sideup && description[:sides] == i.sides && description[:denomination] == nil
            if (counter < amt)
              hand_obj.store(i)
              to_delete.append(index_tracker)
              counter = counter + 1
            end
          # All Die objects
          elsif description[:item] == :die && (description[:colour] == nil && description[:up] == nil) && description[:denomination] == nil
            if (counter < amt)
              hand_obj.store(i)
              to_delete.append(index_tracker)
              counter = counter + 1
            end
          # If colour matches the description
          elsif description[:colour] == i.colour && description[:up] == nil && description[:sides] == nil && description[:denomination] == nil
            if (counter < amt)
              hand_obj.store(i)
              to_delete.append(index_tracker)
              counter = counter + 1
            end
          # If sideup matches the description
          elsif description[:up] == i.sideup && description[:colour] == nil && description[:sides] == nil && description[:denomination] == nil
            if (counter < amt)
              hand_obj.store(i)
              to_delete.append(index_tracker)
              counter = counter + 1
            end
          # If sides matches the description
          elsif description[:sides] == i.sides && description[:colour] == nil && description[:up] == nil && description[:denomination] == nil
            if (counter < amt)
              hand_obj.store(i)
              to_delete.append(index_tracker)
              counter = counter + 1
            end
          # If colour and sides match the description
          elsif description[:sides] == i.sides && description[:colour] == i.colour && description[:up] == nil && description[:denomination] == nil
            if (counter < amt)
              hand_obj.store(i)
              to_delete.append(index_tracker)
              counter = counter + 1
            end
          # If sideup and sides match the description
          elsif description[:sides] == i.sides && description[:colour] == nil && description[:up] == i.sideup && description[:denomination] == nil
            if (counter < amt)
              hand_obj.store(i)
              to_delete.append(index_tracker)
              counter = counter + 1
            end
          # If colour and sideup match the description
          elsif description[:sides] == nil && description[:colour] == i.colour && description[:up] == i.sideup && description[:denomination] == nil
            if (counter < amt)
              hand_obj.store(i)
              to_delete.append(index_tracker)
              counter = counter + 1
            end
          # If description is empty
          elsif description.length == 0 && description[:denomination] == nil
            if (counter < amt)
              hand_obj.store(i)
              to_delete.append(index_tracker)
              counter = counter + 1
            end
          end
        end
        index_tracker = index_tracker + 1
      end
    end

    if description.length == 0 || description[:denomination] != nil || description[:item] == :coin
      index_tracker = 0
      @container.each do |i|
        if i.class.name == "Coin"
          # If sideup and denomination match the description
          if description[:denomination] == i.denomination && description[:up] == i.sideup && description[:sides] == nil && description[:colour] == nil
            if (counter < amt)
              hand_obj.store(i)
              to_delete.append(index_tracker)
              counter = counter + 1
            end
          # All Coin objects
          elsif description[:item] == :coin && (description[:denomination] == nil && description[:up] == nil) && description[:sides] == nil && description[:colour] == nil
            if (counter < amt)
              hand_obj.store(i)
              to_delete.append(index_tracker)
              counter = counter + 1
            end
          # If denomination matches the description
          elsif description[:denomination] == i.denomination && description[:up] == nil && description[:sides] == nil && description[:colour] == nil
            if (counter < amt)
              hand_obj.store(i)
              to_delete.append(index_tracker)
              counter = counter + 1
            end
          # If sideup matches the description
          elsif description[:up] == i.sideup && description[:denomination] == nil && description[:sides] == nil && description[:colour] == nil 
            if (counter < amt)
              hand_obj.store(i)
              to_delete.append(index_tracker)
              counter = counter + 1
            end
          # If description is empty
          elsif description.length == 0 && description[:sides] == nil && description[:colour] == nil
            if (counter < amt)
              hand_obj.store(i)
              to_delete.append(index_tracker)
              counter = counter + 1
            end
          end
        end
        index_tracker = index_tracker + 1
      end
    end

    to_delete.sort!
    to_delete.reverse!

    # Remove the selected objects from self
    for i in 0..to_delete.length-1
      @container.delete_at(to_delete[i])
    end

    return hand_obj
  end

  # If only the description is included, then the default value for amt will be :all
  def select_no_delete(description, amt=:all)
    hand_obj = Hand.new
    counter = 0

    if amt == :all
      amt = @container.length
    end

    # Check which objects match the description
    if description.length == 0 || description[:colour] != nil || description[:item] == :die || description[:sides] != nil
      @container.each do |i|
        if i.class.name == "Die"
          # If colour, sideup and sides match the description
          if description[:colour] == i.colour && description[:up] == i.sideup && description[:sides] == i.sides && description[:denomination] == nil
            if (counter < amt)
              hand_obj.store(i)
              counter = counter + 1
            end
          # All Die objects
          elsif description[:item] == :die && (description[:colour] == nil && description[:up] == nil) && description[:denomination] == nil
            if (counter < amt)
              hand_obj.store(i)
              counter = counter + 1
            end
          # If colour matches the description
          elsif description[:colour] == i.colour && description[:up] == nil && description[:sides] == nil && description[:denomination] == nil
            if (counter < amt)
              hand_obj.store(i)
              counter = counter + 1
            end
          # If sideup matches the description
          elsif description[:up] == i.sideup && description[:colour] == nil && description[:sides] == nil && description[:denomination] == nil
            if (counter < amt)
              hand_obj.store(i)
              counter = counter + 1
            end
          # If sides matches the description
          elsif description[:sides] == i.sides && description[:colour] == nil && description[:up] == nil && description[:denomination] == nil
            if (counter < amt)
              hand_obj.store(i)
              counter = counter + 1
            end
          # If colour and sides match the description
          elsif description[:sides] == i.sides && description[:colour] == i.colour && description[:up] == nil && description[:denomination] == nil
            if (counter < amt)
              hand_obj.store(i)
              counter = counter + 1
            end
          # If sideup and sides match the description
          elsif description[:sides] == i.sides && description[:colour] == nil && description[:up] == i.sideup && description[:denomination] == nil
            if (counter < amt)
              hand_obj.store(i)
              counter = counter + 1
            end
          # If colour and sideup match the description
          elsif description[:sides] == nil && description[:colour] == i.colour && description[:up] == i.sideup && description[:denomination] == nil
            if (counter < amt)
              hand_obj.store(i)
              counter = counter + 1
            end
          # If description is empty
          elsif description.length == 0 && description[:denomination] == nil
            if (counter < amt)
              hand_obj.store(i)
              counter = counter + 1
            end
          end
        end
      end
    end

    if description.length == 0 || description[:denomination] != nil || description[:item] == :coin
      @container.each do |i|
        if i.class.name == "Coin"
          # If sideup and denomination match the description
          if description[:denomination] == i.denomination && description[:up] == i.sideup && description[:sides] == nil && description[:colour] == nil
            if (counter < amt)
              hand_obj.store(i)
              counter = counter + 1
            end
          # All Coin objects
          elsif description[:item] == :coin && (description[:denomination] == nil && description[:up] == nil) && description[:sides] == nil && description[:colour] == nil
            if (counter < amt)
              hand_obj.store(i)
              counter = counter + 1
            end
          # If denomination matches the description
          elsif description[:denomination] == i.denomination && description[:up] == nil && description[:sides] == nil && description[:colour] == nil
            if (counter < amt)
              hand_obj.store(i)
              counter = counter + 1
            end
          # If sideup matches the description
          elsif description[:up] == i.sideup && description[:denomination] == nil && description[:sides] == nil && description[:colour] == nil 
            if (counter < amt)
              hand_obj.store(i)
              counter = counter + 1
            end
          # If description is empty
          elsif description.length == 0 && description[:sides] == nil && description[:colour] == nil
            if (counter < amt)
              hand_obj.store(i)
              counter = counter + 1
            end
          end
        end
      end
    end

    return hand_obj
  end

end
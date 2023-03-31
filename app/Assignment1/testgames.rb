require_relative 'A1_Classes'

# Create a test Player object
player1 = Player.new("John")

# Create a test Player object
player2 = Player.new("Sam")

# Testing initialize(name:String) for a Player object
if player1 != nil
  puts "initialize(name:String): Test Passed"
else
  puts "initialize(name:String): Test Failed"
end

# Create a test Bag object and a test list
bag1 = Bag.new

# Create test Coin object
coin1 = Coin.new(0.25)

# Testing initialize(denomination:Enum) for a Coin object
if coin1 != nil
  puts "initialize(denomination:Enum): Test Passed"
else
  puts "initialize(denomination:Enum): Test Failed"
end

# Testing denomination() for a Coin object
if coin1.denomination == 0.25
  puts "denomination(): Test Passed"
else
  puts "denomination(): Test Failed"
end

# Testing flip() for a Coin object
if coin1.flip != nil
  puts "flip(): Test Passed"
else
  puts "flip(): Test Failed"
end

# Testing sideup() for a Coin object
if coin1.sideup == :H || coin1.sideup == :T
  puts "sideup(): Test Passed"
else
  puts "sideup(): Test Failed"
end

puts "--------------------"

# Create test Die object
die1 = Die.new(4, :red)

# Testing initialize(sides:Int, colour:Enum) for a Die object
if die1 != nil
  puts "initialize(sides:Int, colour:Enum): Test Passed"
else
  puts "initialize(sides:Int, colour:Enum): Test Failed"
end

# Testing colour() for a Die object
if die1.colour == :red
  puts "colour(): Test Passed"
else
  puts "colour(): Test Failed"
end

# Testing sides() for a Die object
if die1.sides == 4
  puts "sides(): Test Passed"
else
  puts "sides(): Test Failed"
end

# Testing roll() for a Die object
if die1.roll != nil
  puts "roll(): Test Passed"
else
  puts "roll(): Test Failed"
end

# Testing sideup() for a Die object
if die1.sideup >= 1 && die1.sideup <= 4
  puts "sideup(): Test Passed"
else
  puts "sideup(): Test Failed"
end

puts "--------------------"

# Testing calls() for a Coin object and a Die object
if coin1.calls == 1 && die1.calls == 1
  puts "calls(): Test Passed"
else
  puts "calls(): Test Failed"
end

# Testing randomize() for a Coin object and a Die object
if coin1.randomize != nil && die1.randomize != nil
  puts "randomize(): Test Passed"
else
  puts "randomize(): Test Failed"
end

# Testing result() for a Coin object and a Die object
if die1.result >= 0 && die1.result <= 4 && (coin1.result == :H || coin1.result == :T)
  puts "result(): Test Passed"
else
  puts "result(): Test Failed"
end

# Testing reset() for a Coin object and a Die object
coin1.reset
die1.reset
if coin1.sideup == nil && coin1.calls == 0 && die1.sideup == nil && die1.calls == 0
  puts "reset(): Test Passed"
else
  puts "reset(): Test Failed"
end

puts "--------------------"

# UC1: Creating Objects - The newly created objects are placed in the Player's Bag
# Testing store(r:Randomizer) for a Bag object using a Coin object
if bag1.store(coin1) != nil
  puts "store(r:Randomizer): Test Passed"
else
  puts "store(r:Randomizer): Test Failed"
end

# UC1: Creating Objects - The newly created objects are placed in the Player's Bag
# Testing store_all(l:List) for a Bag object using a list
list1 = [coin1, die1, coin1]
if bag1.store_all(list1) != nil
  puts "store_all(l:List): Test Passed"
else
  puts "store_all(l:List): Test Failed"
end

# Testing count() for a Bag object
if bag1.count == 4
  puts "count(): Test Passed"
else
  puts "count(): Test Failed"
end

# Create a second test Bag object and store with randomizers
bag2 = Bag.new
bag2.store_all(list1)

# Testing move_all(rc:RandomizerContainer) for a Bag object with a second Bag object
if bag1.move_all(bag2) != nil && bag1.count == 7 && bag2.count == 0
  puts "move_all(rc:RandomizerContainer): Test Passed"
else
  puts "move_all(rc:RandomizerContainer): Test Failed"
end

# Create a test Hand object
hand1 = Hand.new

# UC2: Moving Objects - The objects are placed into the Player's hand
# Testing select(description:Hash, amt=:all) for a Bag object
hand1 = bag1.select({ item: :coin, denomination: 0.25 }, :all)
if bag1.count == 2 && hand1.count == 5
  puts "select(description:Hash, amt=:all): Test Passed"
else
  puts "select(description:Hash, amt=:all): Test Failed"
end

puts "--------------------"

# Testing empty() for a Bag object
bag2.store_all(list1)
bag2.empty
if bag2.count == 0
  puts "empty(): Test Passed"
else
  puts "empty(): Test Failed"
end

puts "--------------------"

# Testing next() for a Hand object
if hand1.next != nil
  puts "next(): Test Passed"
else
  puts "next(): Test Failed"
end

# Testing empty() for a Hand object
hand1.empty
if hand1.count == 0
  puts "empty(): Test Passed"
else
  puts "empty(): Test Failed"
end

puts "--------------------"

# Create a test Cup object
cup1 = Cup.new

# UC2: Moving Objects - The Player places the objects in their hand, into the cup
# Testing load(hand:Hand) for a Cup object using a Hand object
cup1.load(hand1)
if hand1 != nil
  puts "load(hand:Hand): Test Passed"
else
  puts "load(hand:Hand): Test Failed"
end

# Create a test Results object using a Cup object
results1 = Results.new(cup1)

# Testing initialize(cup: Cup) for a Results object
if results1 != nil
  puts "initialize(cup: Cup): Test Passed"
else
  puts "initialize(cup: Cup): Test Failed"
end

# Testing throw() for a Cup object
results1 = cup1.throw
if results1 != nil
  puts "throw(): Test Passed"
else
  puts "throw(): Test Failed"
end

# Testing empty() for a Cup object
bag1 = cup1.empty
if cup1.count == 0
  puts "empty(): Test Passed"
else
  puts "empty(): Test Failed"
end

puts "--------------------"

# Testing description(description:Hash) for a Results object
results1.description({ item: :die })
if results1.description({ item: :die }) != nil
  puts "description(description:Hash): Test Passed"
else
  puts "description(description:Hash): Test Failed"
end

puts "--------------------"

# Testing name() for a Player object
if player1.name == "John"
  puts "name(): Test Passed"
else
  puts "name(): Test Failed"
end

# Testing store(item:Randomizer) for a Player object using a Coin object
if player1.store(coin1) != nil
  puts "store(item:Randomizer): Test Passed"
else
  puts "store(item:Randomizer): Test Failed"
end

# Testing move_all(rc:RandomizerContainer) for a Player object with a Bag object
if player1.move_all(bag1) != nil && bag1.count == 0
  puts "move_all(rc:RandomizerContainer): Test Passed"
else
  puts "move_all(rc:RandomizerContainer): Test Failed"
end

# Testing load(description:Hash = { }) for a Player object
player1.load({ item: :coin })
if player1 != nil
  puts "load(description:Hash = { }): Test Passed"
else
  puts "load(description:Hash = { }): Test Failed"
end

# Testing throw() for a Cup object
results1 = cup1.throw
if results1 != nil
  puts "throw(): Test Passed"
else
  puts "throw(): Test Failed"
end

# Testing replace(description:Hash = { }) for a Player object
player1.replace({ item: :coin })
if player1 != nil
  puts "replace(description:Hash = { }): Test Passed"
else
  puts "replace(description:Hash = { }): Test Failed"
end

puts "--------------------"

# Testing tally(description:Hash = { }) for a Player object (This will also test tally() in the Results class)
tally_list = []
bag1.store(coin1)
bag1.store(coin1)
bag1.store(die1)
player1.move_all(bag1)
player1.load({ item: :coin })

# UC3: Throwing the cup contents - The cup contents are throw out of the Player's cup and fall on a flat surface with one side of each object facing up
player1.throw
player1.throw
player1.throw

#UC4: Recording Results - Storing the descriptive information of an object
tally_list = player1.tally({  })
if tally_list[0] == 2 && tally_list[1] == 2 && tally_list[2] == 2
  puts "tally(description:Hash = { }): Test Passed"
else
  puts "tally(description:Hash = { }): Test Failed"
end

# Testing sum(description:Hash = { }) for a Player object (This will also test sum() in the Results class)
sum_list = []

#UC4: Recording Results - Storing the descriptive information of an object
sum_list = player1.sum({  })
if sum_list[0] >= 0 && sum_list[0] <= 2 && sum_list[1] >= 0 && sum_list[1] <= 2
  puts "sum(description:Hash = { }): Test Passed"
else
  puts "sum(description:Hash = { }): Test Failed"
end

# Testing results(description:Hash = { }, throw:Int = 0) for a Player object (This will also test results() in the Results class)
results_list = []
results_list = player1.results({  }, 0)
if results_list[0] == :T || results_list[0] == :H && results_list[1] == :T || results_list[1] == :H
  puts "results(description:Hash = { }, throw:Int = 0): Test Passed"
else
  puts "results(description:Hash = { }, throw:Int = 0): Test Failed"
end

# Testing clear() for a Player object
player1.clear
if player1 != nil
  puts "clear(): Test Passed"
else
  puts "clear(): Test Failed"
end
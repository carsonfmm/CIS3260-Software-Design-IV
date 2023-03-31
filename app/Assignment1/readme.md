Name: Carson Mifsud
Email: cmifsud@uoguelph.ca
Student ID: 1089936
Assignment: 1
Due Date: Oct. 5, 2022 (11:30 A.M.)

Description: Implement classes and methods in Ruby for a system designed with a player, a cup with dice and coins, a throw of a cup, and recording the results.

Test Cases:
 - The test cases in the file testgames.rb have been based on the Use Cases
 - Comments are placed throughout the file to document the purpose of a test as well as reference directly to specific Use Cases
 - All methods are tested at least once through the test cases

Execution:
 - ruby testgames.rb
 - (The results from the test cases will print to the terminal)

Assumptions:
 - As stated during lecture time: When calling select in methods such as tally(description:Hash = { }), sum(description:Hash = { }), results(description:Hash = { }, throw:Int = 0), etc. the amt may be assumed to be :all by default.

Ruby Style:
 - Followed Assignment spec for class and method names
 - Correct use of Ruby returns
 - Proper Ruby indentation (2 spaces)

IMPORTANT NOTE:
 - As many are aware, the University of Guelph VPN has been down for the entirety of this assignment. Therefore, this does not allow students to test their code on the University's servers. However, n order to overcome this obstacle, I installed Ruby on my own machine and coded this assignment locally on my computer. Ultimately, I would like to provide the copied text below which is output from my testgames.rb file, as proof that all of my test cases passed on my own machine:

    PS C:\CIS3260\Assignment1> ruby testgames.rb
    initialize(name:String): Test Passed
    initialize(denomination:Enum): Test Passed
    denomination(): Test Passed
    flip(): Test Passed
    sideup(): Test Passed
    --------------------
    initialize(sides:Int, colour:Enum): Test Passed
    colour(): Test Passed
    sides(): Test Passed
    roll(): Test Passed
    sideup(): Test Passed
    --------------------
    calls(): Test Passed
    randomize(): Test Passed
    result(): Test Passed
    reset(): Test Passed
    --------------------
    store(r:Randomizer): Test Passed
    store_all(l:List): Test Passed
    count(): Test Passed
    move_all(rc:RandomizerContainer): Test Passed
    select(description:Hash, amt=:all): Test Passed
    --------------------
    empty(): Test Passed
    --------------------
    next(): Test Passed
    empty(): Test Passed
    --------------------
    load(hand:Hand): Test Passed
    initialize(cup: Cup): Test Passed
    throw(): Test Passed
    empty(): Test Passed
    --------------------
    description(description:Hash): Test Passed
    --------------------
    name(): Test Passed
    store(item:Randomizer): Test Passed
    move_all(rc:RandomizerContainer): Test Passed
    load(description:Hash = { }): Test Passed
    throw(): Test Passed
    replace(description:Hash = { }): Test Passed
    --------------------
    tally(description:Hash = { }): Test Passed
    sum(description:Hash = { }): Test Passed
    results(description:Hash = { }, throw:Int = 0): Test Passed
    clear(): Test Passed
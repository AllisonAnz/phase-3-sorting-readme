# Sorting Arrays 

# Goals 
# intro to sorting data
# intro to sort method 

#There are a number of ways to execute someting in ruby 

# Dinner party example
# alphabetize an array of dishes 

# first compare the strings using > and < 
# if we use these operators with a string, the comparison operator will look at the first 
# letter of each string and compare their location in the alphabet 
# Letters later in the alphabet are considered greater than letters earlier in the alphabet
# "zoo" > "apple"
# => true 

# the .sort Method 
# We have to iterate over the array and compare every set of items 
# In order to comare elements in our array to one another, we need an enumerator that 
# allos us to yeild two elements at once 
# that where the sort method comes in 
array = [7, 3, 1, 2, 6, 5]

puts array.sort do |a, b|
    if a == b   
        0
    elsif a < b   
        -1 
    elsif a > b
        1
    end
end
#=> 1 2 3 4 5 6

# .sort method passes elements two at a time in the block, compares those two elements inside the block 
# with out if & elsif logic 
# The first time through the collection .sort passes 7 and 3 into the block and compares them 
# Since 7 is greater than 3, it switches the location of those two element 
# and it looks like this [3, 7, 1, 2, 6, 5]
# The second pass .sort yields the next two items, 7 and 1, compares them and makes nescessary changes 
# and then moves on the next pair. 
#----------------------------------------------------------------------------------------------------

# Ruby Abstraction: Spaceship Operator <=>
# We can introduce a level of abstraction using (<=>)
# Also known as the combine comparison operator 
# returns 0 if the first operand equals the second 
# returns -1 if the first operand is less than the second 
# returns 1 if the first operand is greater than the second 
# So instead of using if and elsif logic, we can call .sort like below 
array = [7, 3, 1, 2, 6, 5]
array.sort do |a, b|
    a <=> b
end 
#  => [1, 2, 3, 5, 6, 7]   
#---------------------------------------------------------------------------------------------------

# Sorting our dinner party menu 
dishes = ["steak", "apple pie", "vegetable soup"]
puts dishes.sort do |a, b|
    a <=> b   
end 
#=> (returns) ["apple pie", "steak", "vegetable soup"] 
#=> apple pie
#=> steak
#=> vegetable soup
#-------------------------------------------------------------------------------------------------

# Ruby Abstraction: .sort
# If we did the following 
dishes = ["steak", "apple pie", "vegetable soup"]
dishes.sort 
# should return ["apple pie", "steak", "vegetable soup"]
# Simply calling .sort has the desired effect 
# It implicitly executes the code we used in the above example 
# but now we understand how sort works, not just what it does 

# Note: By default, the .sort method is case sensitive. It will prioritize strings that are capitalized.
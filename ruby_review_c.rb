# You may NOT use Google. These questions are to test how you are progressing through the material, and to give you some feedback about where you might improve. Get through as many of these as you can. If you don’t get through all of them it’s ok - they are designed to take longer than the available time. If you can’t remember a bit of code, write the pseudo-code that represents how you would write your Ruby code.

# 1.
# Create an array of strings (with five elements). Make a loop from this array, and inside that loop concatenate the string with the string “balloon”, and print this to output.
arr = ["a", "b", "c", "d", "e"]
arr.each do |item|
  # puts item + "baloon"
end

# 2.
# Define a hash with two keys, one for a first name, and the other for a last name, and give them the value of nil. Create a method that takes a hash as an argument, along with two string arguments, one for first name and one for last name. In the method, assign the first name argument to the hash’s first name key, and assign the last name argument to the last name key of the hash. Return the hash after these assignments. Call this method with the hash you created earlier, and store the result in a well named variable. 
hash = {
  first_name: nil,
  last_name: nil
}

def amethod(hash, first, second)
  hash[:first_name] = first
  hash[:last_name] = second
  return hash
end

# puts hash
well_named_variable = amethod(hash, "Mark", "Janssen")
# puts well_named_variable



# 3.
# Make a class for creating cars. Give the class an initializing method that takes two arguments, a make, and a colour, and that then initializes two attributes of the same name. Make the colour attribute read and write accessible, and the make the other attribute only read accessible. Give this class an instance method called car_start, and this method will output (puts) “vrooom!” when called. Create three car objects using your car class. Read the make of two of these car objects (puts the attribute). Read the colour of one of these, change the colour, and then read the colour again. ‘Start’ two of these cars by calling the relevant method.

class Car
  attr_accessor :colour
  attr_reader :make
  def initialize(make, colour)
    @make = make
    @colour = colour
  end

  def car_start
    puts "vrooom!"
  end
end

car1 = Car.new("toyota", "red")
car2 = Car.new("mazda", "red")
car3 = Car.new("honda", "orange")

# puts car1.make
# puts car2.make
# puts car3.colour
# car3.colour=("black")
# puts car3.colour
# car3.car_start
# car2.car_start

# 4.
# Write a method that takes one argument, a number, and that returns true if the number is divisible by 5, and false otherwise. 

def another_method(num)
  if num % 5 == 0
    return true
  else 
    return false
  end
end

# puts another_method(6)

# 5.
# You must use your previous method in this next question. Write another method that takes an array (of numbers) as an argument. This method will use your first method to return two arrays, within one array (an array of arrays), the first array contains the numbers that are divisible by 5, and the other of the rest of the numbers. For example, if you pass the second method the array [9, 4, 25, 3, 5, 30, 2, 8, 10, 100] it would return [[25, 5, 30, 10, 100],[9, 4, 3, 2, 8, 72]].

array = [9, 4, 25, 3, 5, 30, 2, 8, 10, 100]

def method1(arr)
  true_array = []
  false_array = []
  arr.each do |num|
    if another_method(num)
      true_array.push(num)
    else
      false_array.push(num)
    end
  end
  return array_of_arrays = [true_array, false_array]
end

# print method1(array)

# 6. 

# You're writing code to control your town's traffic lights. You need a function to handle each change from green, to yellow, to red, and then to green again.

# Complete the function that takes a string as an argument representing the current state of the light and returns a string representing the state the light should change to.

# For example, update_light('green') should return 'yellow'.
def update_light(colour)
  if colour == "green"
    colour = "yellow"
  elsif colour == "yellow"
    colour = "red"
  elsif colour == "red"
    colour = "green"
  end
  return colour
end

# puts update_light("yellow")


# 7. 

# Given a string of words, return the length of the shortest word(s).

def word_method(stringowords)
  array = stringowords.split(" ")
  array2 = array.sort do |item_a, item_b|
    item_a.length <=> item_b.length
  end
  return array2[0].length
end

# puts word_method("here is a string of words")

# String will never be empty and you do not need to account for different data types.

# find_short("i want to travel the world writing code one day")
# => 1 

# find_short("bitcoin take over the world maybe who knows perhaps")
# => 3

# 8. 

# Your task is to make a function that can take any non-negative integer as a argument and return it with its digits in descending order. Essentially, rearrange the digits to create the highest possible number.

# Examples:

# Input: 21445 Output: 54421

# Input: 145263 Output: 654321

# Input: 1254859723 Output: 9875543221

def method2(integer)
  a = integer.to_s.split("")
  a2 = a.sort do |i1, i2|
    i2 <=> i1
  end
  a2.join.to_i

end

puts method2(21445)
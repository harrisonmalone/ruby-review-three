# You may NOT use Google. These questions are to test how you are progressing through the material, and to give you some feedback about where you might improve. Get through as many of these as you can. If you don’t get through all of them it’s ok - they are designed to take longer than the available time. If you can’t remember a bit of code, write the pseudo-code that represents how you would write your Ruby code.

# 1.
# Create an array of strings (with five elements). Make a loop from this array, and inside that loop concatenate the string with the string “balloon”, and print this to output.
array_1 = ["red", "blue", "yellow", "green", "purple"]
array_1.each do |string|
  # new_string = string + " " + "balloon"
  new_string = string.concat(" ", "balloon")
  puts new_string
end

# 2.
# Define a hash with two keys, one for a first name, and the other for a last name, and give them the value of nil. Create a method that takes a hash as an argument, along with two string arguments, one for first name and one for last name. In the method, assign the first name argument to the hash’s first name key, and assign the last name argument to the last name key of the hash. Return the hash after these assignments. Call this method with the hash you created earlier, and store the result in a well named variable.
name_hash = {
  first_name: nil,
  last_name: nil
}

def assign_name(hash, first_name, last_name)
  hash[:first_name] = first_name
  hash[:last_name] = last_name
  return hash
end

tess_name_hash = assign_name(name_hash, "Tessa", "Peterson")
# puts tess_name_hash

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

car_1 = Car.new("Toyota", "blue")
car_2 = Car.new("Holden", "green")
car_3 = Car.new("Ford", "white")

# puts car_1.make
# puts car_2.make

# puts car_3.colour
# car_3.colour = "black"
# puts car_3.colour

# car_1.car_start
# car_2.car_start

# 4.
# Write a method that takes one argument, a number, and that returns true if the number is divisible by 5, and false otherwise.
def divisible_by_five?(num)
  return num % 5 == 0
end

# puts divisible_by_five?(4)
# puts divisible_by_five?(20)


# 5.
# You must use your previous method in this next question. Write another method that takes an array (of numbers) as an argument. This method will use your first method to return two arrays, within one array (an array of arrays), the first array contains the numbers that are divisible by 5, and the other of the rest of the numbers. For example, if you pass the second method the array [9, 4, 25, 3, 5, 30, 2, 8, 10, 100] it would return [[25, 5, 30, 10, 100],[9, 4, 3, 2, 8, 72]].

def sort_divisible_numbers(array)
  divisible_numbers = []
  other_numbers = []

  array.each do |number|
    if divisible_by_five?(number)
      divisible_numbers << number
    else
      other_numbers << number
    end
  end

  return [divisible_numbers, other_numbers]
end

# p sort_divisible_numbers([9, 4, 25, 3, 5, 30, 2, 8, 10, 100])

# 6.

# You're writing code to control your town's traffic lights. You need a function to handle each change from green, to yellow, to red, and then to green again.

# Complete the function that takes a string as an argument representing the current state of the light and returns a string representing the state the light should change to.

# For example, update_light('green') should return 'yellow'.

def update_light(colour)
  case colour
  when "green"
    return "yellow"
  when "yellow"
    return "red"
  when "red"
    return "green"
  end
end

# p update_light("green")
# p update_light("yellow")
# p update_light("red")

# 7.

# Given a string of words, return the length of the shortest word(s).

def find_short(sentence)
  word_array = sentence.split

  word_array.sort! do |word_a, word_b|
    word_a.length <=> word_b.length
  end

  return word_array.first.length
end

# puts find_short("i want to travel the world writing code one day")
# puts find_short("bitcoin take over the world maybe who knows perhaps")

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

def sort_digits(integer)
  split_integer = integer.to_s.split("")
  rearranged_digits = split_integer.sort.reverse
  rearranged_integer = rearranged_digits.join.to_i
  return rearranged_integer
end

p sort_digits(21445)
p sort_digits(145263)
p sort_digits(1254859723)
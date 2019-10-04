# You may NOT use Google. These questions are to test how you are progressing through the material, and to give you some feedback about where you might improve. Get through as many of these as you can. If you don’t get through all of them it’s ok - they are designed to take longer than the available time. If you can’t remember a bit of code, write the pseudo-code that represents how you would write your Ruby code.

# 1.
# Create an array of strings (with five elements). Make a loop from this array, and inside that loop concatenate the string with the string “balloon”, and print this to output.
puts "Q1:"
puts "======================================="
puts ""

arr = %w(some list with some strings)
arr.each do |item|
  puts item + "balloon"
end

puts ""

# 2.
# Define a hash with two keys, one for a first name, and the other for a last name, and give them the value of nil. Create a method that takes a hash as an argument, along with two string arguments, one for first name and one for last name. In the method, assign the first name argument to the hash’s first name key, and assign the last name argument to the last name key of the hash. Return the hash after these assignments. Call this method with the hash you created earlier, and store the result in a well named variable.
puts "Q2:"
puts "======================================="
puts ""

name = {
  first_name: nil,
  last_name: nil
}

def define_name(hash, first_name, last_name)
  hash[:first_name] = first_name
  hash[:last_name] = last_name
  return hash
end

variable = define_name(name, "Lev", "Toth")

p variable

puts ""

# 3.
# Make a class for creating cars. Give the class an initializing method that takes two arguments, a make, and a colour, and that then initializes two attributes of the same name. Make the colour attribute read and write accessible, and the make the other attribute only read accessible. Give this class an instance method called car_start, and this method will output (puts) “vrooom!” when called. Create three car objects using your car class. Read the make of two of these car objects (puts the attribute). Read the colour of one of these, change the colour, and then read the colour again. ‘Start’ two of these cars by calling the relevant method.
puts "Q3:"
puts "======================================="
puts ""

class Car
  attr_accessor(:color)
  attr_reader(:make)

  def initialize(make, color)
    @make = make
    @color = color
  end

  def car_start
    print "vroom!"
  end
end

car0, car1, car2 = Car.new("Toyota", "Red"), Car.new("Holden", "Green"), Car.new("Ford", "Blue")

puts car0.make
puts car1.make
puts car2.color
puts ""

car2.color = ("Purple")
puts car2.color
puts ""

puts car0.car_start
puts car1.car_start
puts ""

puts ""

# 4.
# Write a method that takes one argument, a number, and that returns true if the number is divisible by 5, and false otherwise.
puts "Q4:"
puts "======================================="
puts ""

def div_by_5?(num)
  return num % 5 == 0
end

puts div_by_5?(3)
puts div_by_5?(5)
puts div_by_5?(9)
puts div_by_5?(10)
puts div_by_5?(14)
puts div_by_5?(15)

puts ""

# 5.
# You must use your previous method in this next question. Write another method that takes an array (of numbers) as an argument. This method will use your first method to return two arrays, within one array (an array of arrays), the first array contains the numbers that are divisible by 5, and the other of the rest of the numbers. For example, if you pass the second method the array [9, 4, 25, 3, 5, 30, 2, 8, 10, 100] it would return [[25, 5, 30, 10, 100],[9, 4, 3, 2, 8, 72]].
puts "Q5:"
puts "======================================="
puts ""

def seperate_by_div_by_5(array)
  divisable = []
  indivisable = []
  array.each do |num|
    div_by_5?(num) ? divisable << num : indivisable << num
  end
  return [divisable, indivisable]
end

test_array = [9, 4, 25, 3, 5, 30, 2, 8, 10, 100]
p seperate_by_div_by_5(test_array)

puts ""

# 6. 

# You're writing code to control your town's traffic lights. You need a function to handle each change from green, to yellow, to red, and then to green again.

# Complete the function that takes a string as an argument representing the current state of the light and returns a string representing the state the light should change to.

# For example, update_light('green') should return 'yellow'.
puts "Q6:"
puts "======================================="
puts ""

def update_light(light_state)
  case light_state
  when 'red' then return 'green'
  when 'yellow' then return 'red'
  when 'green' then return 'yellow'
  end
end

p update_light('red')
p update_light('yellow')
p update_light('green')

puts ""

# 7. 

# Given a string of words, return the length of the shortest word(s).

# String will never be empty and you do not need to account for different data types.

# find_short("i want to travel the world writing code one day")
# => 1 

# find_short("bitcoin take over the world maybe who knows perhaps")
# => 3
puts "Q7:"
puts "======================================="
puts ""

def find_short(string)
  shortest_words = string.split(" ")
                  .sort { |a, b| a.length <=> b.length }
                  .first
                  .length

  return shortest_words
end

p find_short("i want to travel the world writing code one day")
p find_short("bitcoin take over the world maybe who knows perhaps")

puts ""

# 8. 

# Your task is to make a function that can take any non-negative integer as a argument and return it with its digits in descending order. Essentially, rearrange the digits to create the highest possible number.

# Examples:

# Input: 21445 Output: 54421

# Input: 145263 Output: 654321

# Input: 1254859723 Output: 9875543221
puts "Q8:"
puts "======================================="
puts ""

def biggest_number(num)
  big_num = num.to_s
               .split("")
               .sort { |a, b| b.to_i <=> a.to_i }
               .join
               .to_i

  return big_num
end

p biggest_number(21445)
p biggest_number(145263)
p biggest_number(1254859723)

puts ""
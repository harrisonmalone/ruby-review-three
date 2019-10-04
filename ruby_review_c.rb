# You may NOT use Google. These questions are to test how you are progressing through the material, and to give you some feedback about where you might improve. Get through as many of these as you can. If you don’t get through all of them it’s ok - they are designed to take longer than the available time. If you can’t remember a bit of code, write the pseudo-code that represents how you would write your Ruby code.

# 1.
# Create an array of strings (with five elements). Make a loop from this array, and inside that loop concatenate the string with the string “balloon”, and print this to output.

# array_of_strings = ["a","b","c","d","e"]
# array_of_strings.each do |element|
#   puts element + "balloon"
# end

# 2.
# Define a hash with two keys, one for a first name, and the other for a last name, and give them the value of nil. Create a method that takes a hash as an argument, along with two string arguments, one for first name and one for last name. In the method, assign the first name argument to the hash’s first name key, and assign the last name argument to the last name key of the hash. Return the hash after these assignments. Call this method with the hash you created earlier, and store the result in a well named variable. 


# hash = {
#   first_name: nil,
#   last_name: nil
# }

# def method(hash,first_name,last_name)

#   hash[:first_name] = first_name
#   hash[:last_name] = last_name
#   return hash

# end

# hash_with_values = method(hash,"Murtaza","Taloo")
# p hash_with_values

# 3.
# Make a class for creating cars. Give the class an initializing method that takes two arguments, a make, and a colour, and that then initializes two attributes of the same name. Make the colour attribute read and write accessible, and the make the other attribute only read accessible. Give this class an instance method called car_start, and this method will output (puts) “vrooom!” when called. Create three car objects using your car class. Read the make of two of these car objects (puts the attribute). Read the colour of one of these, change the colour, and then read the colour again. ‘Start’ two of these cars by calling the relevant method.


# class Car
#   attr_accessor :color
#   attr_reader :make
#   def initialize(make,color)
#     @make = make
#     @color = color
#   end

#   def car_start
#     puts "Vrooom!!"
#   end

# end

# car1 = Car.new("Honda", "Red")
# car2 = Car.new("Toyota", "Black")

# puts car1.make
# car1.color=("Orange")
# puts car1.color

# car1.car_start
# car2.car_start

# 4.
# Write a method that takes one argument, a number, and that returns true if the number is divisible by 5, and false otherwise. 


# def divisible_by_five?(number)

#   if number % 5 == 0
#     return true
#   else
#     return false
#   end

# end

# p divisible_by_five?(10)


# 5.
# You must use your previous method in this next question. Write another method that takes an array (of numbers) as an argument. This method will use your first method to return two arrays, within one array (an array of arrays), the first array contains the numbers that are divisible by 5, and the other of the rest of the numbers. For example, if you pass the second method the array [9, 4, 25, 3, 5, 30, 2, 8, 10, 100] it would return [[25, 5, 30, 10, 100],[9, 4, 3, 2, 8, 72]].

# array = [9, 4, 25, 3, 5, 30, 2, 8, 10, 100]

# def divisible_by_five_list?(array)

#   divisible = []
#   non_divisible = []
#   main_array = []

#   array.each do |element|
  
#     if divisible_by_five?(element)
#       divisible << element
#     else
#       non_divisible << element
#     end

#   end

#   main_array << divisible
#   main_array << non_divisible

#   p main_array

# end

# divisible_by_five_list?(array)




# 6. 

# You're writing code to control your town's traffic lights. You need a function to handle each change from green, to yellow, to red, and then to green again.

# Complete the function that takes a string as an argument representing the current state of the light and returns a string representing the state the light should change to.

# For example, update_light('green') should return 'yellow'.


# def change_light(light)

#   if light.capitalize == "Green"
#     return "yellow"
#   elsif light.capitalize == "Yellow"
#     return "red"
#   elsif light.capitalize == "Red"
#     return "green"
#   end

# end

# p change_light("yellow")

# 7. 

# Given a string of words, return the length of the shortest word(s).

# String will never be empty and you do not need to account for different data types.

# find_short("i want to travel the world writing code one day")
# => 1 

# find_short("bitcoin take over the world maybe who knows perhaps")
# => 3
# string1 = "i want to travel the world writing code one day"
# string2 = "bitcoin take over the world maybe who knows perhaps"

# def return_length(string)

#   arr =  string.split(" ")
#   arr.sort! do |a, b|
#      a.length <=> b.length
#   end
#   return p arr[0].length
# end

# return_length(string1)


# 8. 

# Your task is to make a function that can take any non-negative integer as a argument and return it with its digits in descending order. Essentially, rearrange the digits to create the highest possible number.

# Examples:

# Input: 21445 Output: 54421

# Input: 145263 Output: 654321

# Input: 1254859723 Output: 9875543221

def highest_number(number)

  string = number.to_s
  array = string.split("")
  array.sort! do |digit1,digit2|
    digit2 <=> digit1
  end
  descending_number = array.join
  return p descending_number.to_i

end

highest_number(1254859723)
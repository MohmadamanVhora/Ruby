class Car
  def gst_price(price)
    gst_price = price * 0.18
    total_price = price + gst_price
    return "Original Price of the car is: #{price}", "GST price of the car is: #{gst_price.to_i}", "Total price of the car is: #{total_price.to_i}"
  end

  def scope
    color = "red"
    @color = "blue"
    return "Instance Variable Color: #{@color}", "Local Variable color: #{color}"
  end

  def scope_testing_1
    testing1 = @color 
    return "Instance Variable Color accessed from different method: #{testing1}"
  end

  def scope_testing_2
    @color = "green"
    return "Instance Variable Color Changed to: #{@color}"
  end

  def scope_testing_3
    testing2 = color
    return testing2
  end


  NO_OF_WHEELS = 4

  def const
    puts "The car has #{NO_OF_WHEELS} Wheels."
  end

  def color_print(carColor)
    print "the color of the car is #{carColor}"
  end

  # Module:-
  module Fueltype
    PETROL = 0
    DIESEL = 1
    CNG = 2
  end

  def enum_method
    # We can create enum by Hash, Array, and Module.
    # Hash:-
    fuel_type_hash = {petrol: 0, diesel: 1, cng: 2}
    # Array:-
    fuel_type_array = [:petrol, :diesel, :cng]

    puts "hash: #{fuel_type_hash[:petrol]}"
    puts "array: #{fuel_type_array[0]}"
    puts "module: #{Fueltype::PETROL}"

  end
end


class Car2
  def const_test
    puts "The car has #{NO_OF_WHEELS} Wheels."
  end
end



# Pr-Create a method that takes an argument of price and returns the integer value of the price plus 18% GST of that price

puts Car.new.gst_price(799999)
puts ""


# Pr-Create a method and create an instance and local variable with the same name color and test the scope of both variable   
testing_variables = Car.new
puts testing_variables.scope
puts testing_variables.scope_testing_1
puts testing_variables.scope_testing_2
puts testing_variables.scope_testing_3             # This Throw an error `scope_testing_3': undefined local variable or method `color' (NameError)
puts ""

# Conclusion-We can access and change the instance variable in different methods within same class but we can't change or access the local variable in different methods.So we can conclude The Local Variable's scope are only in it's method block. And The Instance Variable's scope are among different methods in same class.


# Pr-Create a constant within the class named no of wheels, set value 4, and use it in a different method
constant_testing1 = Car.new
constant_testing1.const

constant_testing2 = Car2.new
constant_testing2.const_test                # `const_test': uninitialized constant Car2::NO_OF_WHEELS (NameError)
puts ""

# Conclusion-Constants defined within a class or module can be accessed from within that class or module, It can't be accessed in different classes.


# Pr-Create a method to take an argument for the color and print string: the color of the car is ___( fill in the color name here from the argument)
car_color = Car.new
car_color.color_print("Black")
puts ""


# Pr-Create an enum for fuel type and use it with any method
enum = Car.new.enum_method
puts ""


# Pr-Create an array from 1 to 10 and perform all methods on the array
array = [1,2,3,4,5,6,7,8,9,10]
puts "array: #{array}"
puts "append: #{array.append(11)}"
puts "at: #{array.at(4)}"
puts "bsearch: #{array.bsearch {|x| x > 2}}"
puts "bsearch_index: #{array.bsearch_index {|x| x > 2}}"
puts "clear: #{array.clear}"

array = [1,2,3,4,5,6,7,8,9,10]
puts "array: #{array}"
puts "combination: #{array.combination(2).to_a}"
puts "count: #{array.count}"
puts "delete: #{array.delete 1}"
puts "array: #{array}"
puts "delete_at: #{array.delete_at 0}"
puts "array: #{array}"
puts "delete_if: #{array.delete_if {|a| a % 2 != 0}}"

array = [1,2,3,4,5,6,7,8,9,10]
puts "array: #{array}"
puts "drop: #{array.drop 5}"
puts "empty?: #{array.empty?}"
puts "find_index: #{array.find_index 4}"
puts "first: #{array.first}"
puts "insert: #{array.insert 5, 11}"
puts "length: #{array.length}"
puts "max: #{array.max}"
puts "min: #{array.min}"
puts "minmax: #{array.minmax}"
puts "pop: #{array.pop}"
puts "array: #{array}"
puts "push: #{array.push 12}"
puts "array: #{array}"
puts "shift: #{array.shift}"
puts "array: #{array}"
puts "unshift: #{array.unshift 1}"

array = [1,5,2,9,3,4,5,7,6,5,6,7,2,2,10,8,9]
puts "array: #{array}"
puts "uniq!: #{array.uniq!}"
puts "sort!: #{array.sort!}"
puts "sum: #{array.sum}"

array = [[1,5,nil, [4,nil]], [5, nil, [5,6,[nil, nil, 6]]]]
puts "array: #{array}"
puts "flatten!: #{array.flatten!}"
puts "compact!: #{array.compact!}"
puts ""

# Pr-Create an array with strings containing colors and perform various available array methods on it
color_array1 = Array.new ["red", "green", "blue", "yellow", "orange"]
puts "color_array1: #{color_array1}"

color_array2 = Array.new ["purple", "yellow", "gray", "black", "white"]
puts "color_array2: #{color_array2}"

puts "concat: #{color_array1.concat(color_array2)}"
puts "replace: #{color_array1.replace(color_array2)}"

color_array1.insert(0, "red")
color_array1.insert(3, "green")
color_array2.insert(4, "blue")
puts "color_array1: #{color_array1}"

puts "intersection: #{color_array1.intersection(color_array2)}"
puts "union: #{color_array1.union(color_array2)}"
puts "map: #{color_array1.map{|x| x + "!"}}"
puts "reverse: #{color_array1.reverse}"
puts "color_array1: #{color_array1}"
puts "rotate: #{color_array1.rotate 2}"
puts "sample(random): #{color_array1.sample 2}"
puts "select: #{color_array1.select{|x| x.length == 5}}"
puts "shuffle(random): #{color_array1.shuffle}"
puts "size: #{color_array1.size}"
puts "sort!: #{color_array1.sort!}"
puts "slice: #{color_array1.slice 2..5}"
puts "take: #{color_array1.take 2}"
puts "values_at: #{color_array1.values_at 1, 2, 4, -2}"
puts ""


# Pr-Print the current date and time and date time after 30 days
require 'date'
require 'time'
puts "Today's Date: #{Date.today}"
puts "Current Time: #{Time.now}"
puts "Current DateTime: #{DateTime.now}"
puts "DateTime after 30 days: #{DateTime.now + 30}"
puts ""


# Pr-Practice various types of iterators available with the above arrays ( each, each_with_index, map etc.)

# Each Iterator
puts "Each Iterator:-"
array1 = ["red", "green", "blue", "yellow", "orange"]
array1.each do |x|
  puts x
end
puts ""

# Each_with_index Iterator
puts "Each_with_index Iterator:-"
array1.each_with_index do |x, i|
  puts "#{i} : #{x}"
end
puts ""

# map Iterator
puts "map Iterator:-"
array1.map {|x| '!' +x +'!'}.each do |x|
  puts x
end
puts ""

# Collect Iterator
puts "Collect Iterator:-"
array2 = 1..5
collection = array2.collect{|x| x * 2}
puts collection
puts ""

# Times Iterator
puts "Times Iterator:-"
5.times do |x|
  puts x
end
puts ""

# Upto Iterator
puts "Upto Iterator:-"
5.upto(10) do |x|
  puts x
end
puts ""

# Downto Iterator
puts "Downto Iterator:-"
5.downto(1) do |x|
  puts x
end
puts ""

# Step Iterator
puts "Step Iterator:-"
(1..10).step(2) do |x|
  puts x
end
puts ""

# Each_Line Iterator
puts "Each_Line Iterator:-"
string = "Hello,\nHow\nare\nyou?"
string.each_line do |line|
  puts line
end
puts ""

# pr-Create a Hash --> dictionary = { :one => 'uno', :two => 'dos', :three => 'tres' }, print value of dictionary[:one]
dictionary = Hash.new 
dictionary = {:one => 'uno', :two => 'dos', :three => 'tres' }
puts "Hash: #{dictionary}"
puts "value of dictionary[:one] : #{dictionary[:one]}"
puts ""

# Pr-Create a method that uses proc/lambda
def proc_method
  my_proc = Proc.new {return "This is proc"}
  my_proc.call
  "This is proc2"
end

def lambda_method
  my_lambda = lambda {return "This is lambda"}
  my_lambda.call
  "This is lambda2"
end

puts proc_method
puts lambda_method

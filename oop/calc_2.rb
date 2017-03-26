# In the previous exercise, you were asked to DRY up your code (remove duplicated code)
# by using Inheritance. In this exercise, you must DRY up your code 
# a different technique using Composition. Hint: Google 'Ruby Mixin Module'. (Using
# mixin modules is how you achieve Composition with Ruby.)

module SimpleCalculator

  def add(first_number, second_number)
    first_number + second_number
  end

  def subtract(first_number, second_number)
    first_number - second_number
  end

  def multiply(first_number, second_number)
    first_number * second_number
  end

  def divide(first_number, second_number)
    first_number / second_number
  end

end

class FancyCalculator
  include SimpleCalculator

  def square_root(number)
    Math.sqrt(number)
  end

end

# Copy your driver code from the previous exercise below:
fancycalc = FancyCalculator.new()
puts "Add: "
p fancycalc.add(4,5)
puts "Subtract: "
p fancycalc.subtract(8,5)
puts "Multiply: "
p fancycalc.multiply(8,5)
puts "Divide: "
p fancycalc.divide(45,5)
puts "Square root: "
p fancycalc.square_root(36)

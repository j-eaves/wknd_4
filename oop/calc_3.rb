# In this example, we have THREE calculators, the two included in the previous
# exercises as well as Whiz Bang Calculator that can even calculate the hypotenuse
# of a triangle if given the length of the other two sides. Figure out how to 
# DRY up all the code below - there shouldn't be a single method duplicated between
# any two classes.

class SimpleCalculator

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

class FancyCalculator<SimpleCalculator

  def square_root(number)
    Math.sqrt(number)
  end

end

class WhizBangCalculator<FancyCalculator

  def hypotenuse(first_number, second_number)
    Math.hypot(first_number, second_number)
  end
  
  def exponent(first_number, exponent_number)
    total = 1
    exponent_number.times { total = multiply(total,first_number) }
    total
  end

end

# Copy your driver code from the previous exercise and more below:

# Copy your driver code from the previous exercise below:
calc = WhizBangCalculator.new()
puts "Add: "
p calc.add(4,5)
puts "Subtract: "
p calc.subtract(8,5)
puts "Multiply: "
p calc.multiply(8,5)
puts "Divide: "
p calc.divide(45,5)
puts "Square root: "
p calc.square_root(36)
puts "Hypoteneuse: "
p calc.hypotenuse(5,6)
puts "Exponent: "
p calc.exponent(5,3)

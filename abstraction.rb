# Define an abstract class representing a shape
# Abstraction
class Shape
    def area
      raise NotImplementedError, "Subclasses must implement the area method"
    end
  
    def perimeter
      raise NotImplementedError, "Subclasses must implement the perimeter method"
    end
  end
  
  # Define a concrete subclass of Shape representing a Circle
  class Circle < Shape
    def initialize(radius)
      @radius = radius
    end
  
    def area
      Math::PI * @radius**2
    end
  
    def perimeter
      2 * Math::PI * @radius
    end
  end
  
  # Define a concrete subclass of Shape representing a Rectangle
  class Rectangle < Shape
    def initialize(length, width)
      @length = length
      @width = width
    end
  
    def area
      @length * @width
    end
  
    def perimeter
      2 * (@length + @width)
    end
  end
  
  # Create instances of Circle and Rectangle
  circle = Circle.new(5)
  rectangle = Rectangle.new(4, 6)
  
  # Output the area and perimeter of the shapes
  puts "Circle - Area: #{circle.area}, Perimeter: #{circle.perimeter}"
  puts "Rectangle - Area: #{rectangle.area}, Perimeter: #{rectangle.perimeter}"
  
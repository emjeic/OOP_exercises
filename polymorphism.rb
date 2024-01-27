    # Polymorphism by Inheritance
class Animal
    def speak
      raise NotImplementedError, "Subclasses must implement the speak method"
    end
  end
  
  class Dog < Animal
    def speak
      "Woof!"
    end
  end
  
  class Cat < Animal
    def speak
      "Meow!"
    end
  end
  
  dog = Dog.new
  cat = Cat.new
  
  puts "Dog says: #{dog.speak}"
  puts "Cat says: #{cat.speak}"
  
    # Polymorphism by duck-typing
def make_speak(animal)
    animal.speak
  end
  
  class Dog
    def speak
      "Woof!"
    end
  end
  
  class Cat
    def speak
      "Meow!"
    end
  end
  
  dog = Dog.new
  cat = Cat.new
  
  puts "Dog says: #{make_speak(dog)}"
  puts "Cat says: #{make_speak(cat)}"
  
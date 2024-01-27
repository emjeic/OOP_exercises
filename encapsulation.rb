class Person
    def initialize(name, age)
      @name = name
      @age = age
    end
  
    def name
      @name
    end
  
    def age
      @age
    end
  
    def age=(new_age)
      @age = new_age if new_age > 0
    end
  end
  

  person = Person.new("John", 32)

  puts "Name: #{person.name}"
  puts "Age: #{person.age}"
  
  person.age = 35
  puts "New Age: #{person.age}"
  
  person.age = -5
  puts "Age after invalid modification: #{person.age}"
  
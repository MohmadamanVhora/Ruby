class Car
  attr_reader :id           # This creates getter method.
  attr_writer :id           # This creates setter method.
  attr_accessor :id         # This is the combination of attr_reader and attr_writer (Creates both getter and setter method)
  def initialize(id)
    @id = id
  end

  def display
    puts "Car Id: #{@id}"
  end
  
  def polymorphism_example
    puts "This car inside class Car"
  end

  def get_id
    return @id
  end
  
  def set_id=(id)
    return @id = id
  end

  public
  def public_method
    puts "This is Public method"
    private_method
    protected_method
  end

  private
  def private_method
    puts "This is Private method"
  end

  protected
  def protected_method
    puts "This is Protected method"
  end
end

module Tyre
  def tyre
    puts "Car has 4 tyres"
  end
end

  
class Type < Car
  include Tyre          # we can not use multiple inheritance so we use modules instead.
  def luxurios
    puts "This is Luxurios car"
    private_method
    protected_method
  end

  def polymorphism_example
    puts "This car inside class Type"
  end
end


class Name < Type
  def name
    puts "This is Ferrari Car"
  end

  def polymorphism_example
    puts "This car inside class Name"
  end
end


class CarType
  include Tyre         
  def luxurios
    puts "This is Luxurios car"
  end

  def polymorphism_example
    puts "This car inside class CarType"
  end
end


class CarName
  def name
    puts "This is Ferrari Car"
  end

  def polymorphism_example
    puts "This car inside class CarName"
  end
end



# Encapsulation

encapsulation_object = Car.new(1)
p "This is car id before set"
encapsulation_object.display

encapsulation_object.id=3               # This sets encapsulation_object id = 3
encapsulation_object.set_id=3
p "This is car id after set"
encapsulation_object.display


# Inheritance

inheritance_object1 = Type.new(1)       
inheritance_object1.display             # We can access display method of parent class. This is Single inheritance.

inheritance_object1.tyre                # we called tyre method of module Tyre. we can say it is Multiple inheritance.

inheritance_object2 = Name.new(2)       # we called display method from class Car, luxurios method from class Type. This is Multilevel inheritance.
inheritance_object2.display
inheritance_object2.luxurios
inheritance_object2.name


# Polymorphism

# using inheritance
polymorphism_object1 = Car.allocate.polymorphism_example
polymorphism_object1 = Type.allocate.polymorphism_example
polymorphism_object1 = Name.allocate.polymorphism_example

# using duck typing
polymorphism_object2 = Car.allocate.polymorphism_example
polymorphism_object2 = CarType.allocate.polymorphism_example
polymorphism_object2 = CarName.allocate.polymorphism_example


# Abstraction

abstraction_object = Car.allocate           # we can't access directly by method name but we can access it in public method.
abstraction_object.public_method
abstraction_object.private_method           # This get error: `<main>': private method `private_method' called for #<Car:0x00007fb7bcc2e658> (NoMethodError)
abstraction_object.protected_method         # This get error: `<main>': protected method `protected_method' called for #<Car:0x00007fb7bcc2e658> (NoMethodError)

abstraction_object = Type.allocate          # We can access private and protected method inside public method of subclass but we can't access directly by method name.
abstraction_object.protected_method         # This get error: `<main>': protected method `protected_method' called for #<Car:0x00007fb7bcc2e658> (NoMethodError)
abstraction_object.luxurios





class Pets
  attr_reader :age, :breed
  attr_accessor :name

  def initialize(name, breed, age)
    @name = name
    @age = age
    @breed = breed
  end

  def print_info
    "#{@name} is a #{@age} year old #{@breed}."
  end

  def print_trick
    "#{@name} is #{@trick}."
  end
end

class Dog < Pets
  def sit
    @trick = "sitting"
    self
  end

  def down
    @trick = "lying down"
    self
  end
end

class Cat < Pets
  def sit
    @trick = "glaring at you"
    self
  end

  def down
    @trick = "glaring at you"
    self
  end
end


moby = Dog.new("Moby", "border collie", 1)
tricky = Cat.new("Tricky", "tabby", 7)
# puts moby.print_info
# puts tricky.print_info

moby.name = "Moby Dick"
# puts "Please address my dog by his full name, #{moby.name}."
# puts moby.print_info

puts moby.sit.print_trick
puts tricky.sit.print_trick
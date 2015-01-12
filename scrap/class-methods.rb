class SayingHello

  def self.hello1
    puts "The class says hello from method 1."
  end

  class << self
    def hello2
      puts "The class says hello from method 2."
    end
  end
end

SayingHello.hello1
SayingHello.hello2

class SayingHello
  def hello
    puts "An instance of the class says hello."
  end
end

example = SayingHello.new
example.hello

class SayingHello

  def self.hello
    puts "The class says hello."
  end

  def hello
    puts "An instance of the class says hello."
  end

end

SayingHello.hello

instance_hello = SayingHello.new
instance_hello.hello

puts "BREAK"


class SayingHello

  def initialize(person)
    @person = person
  end

  def self.hello(person)
    puts "#{person} says hello from the class."
  end

  def hello
    puts "#{@person} says hello from the instance of a class."
  end
end

SayingHello.hello("Cari")
cari = SayingHello.new("Cari")
cari.hello

puts "BREAK"

class SayingHello

  def initialize(person)
    @person = person
  end

  def self.hello(person)
    puts "#{person} says hello from the class."
  end

  def hello
    puts "#{@person} says hello from an instance of the class."
  end

  def hello_special(type = nil)
    case type
    when "english"
      puts "#{@person} says it is a pleasure to meet you."
    when "australian"
      puts "#{@person} says 'G'day, mate!"
    when "pirate"
      puts "#{@person} says 'Arrrrrrrr!'"
    else
      puts "#{@person} says hello."
    end
  end
end

SayingHello.hello("Cari")
cari = SayingHello.new("Cari")
cari.hello
cari.hello_special("pirate")
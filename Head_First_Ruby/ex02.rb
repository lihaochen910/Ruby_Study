# Inherit
# 类的继承

class Animal

  attr_reader :name, :age

  def name=(value)
    raise "Name can't be blank!" if value == ''
    @name = value
  end

  def age=(value)
    raise "An age of #{value} isn't valid!" if value < 0
    @age = value
  end

  def talk
    puts "#{@name} says Bark!"
  end

  def move(destination)
    puts "#{@name} runs to the #{destination}"
  end

  def report_age
    puts "#{@name} is #{@age} years old."
  end

end

class Dog < Animal

end

class Bird < Animal
  def talk
    super
    puts "#{@name} says JiJiZhaZha!"
  end
end

class Cat < Animal

end

bird = Bird.new()

bird.talk
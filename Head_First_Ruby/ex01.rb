class Vehicle

  attr_accessor :odometer, :gas_used

  def accelerate
    puts "Floor it!"
  end

  def sound_horn
    puts "Beep! Beep!"
  end

  def steer
    puts "Turn front 2 wheels."
  end

  def mileage
    @odometer / @gas_used
  end

end

class Car < Vehicle

  def modify_name(new_name)
    @name = new_name
  end

end

car = Car.new()
car.odometer = 22914
car.gas_used = 729

puts car.instance_variables

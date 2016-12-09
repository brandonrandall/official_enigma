class Car

  attr_accessor :color, :wheel_count

  def initialize
    @start = false
    @already_started = false
  end

  def horn
    "Beep Beep!"
  end

  def drive(distance)
    "I would drive #{distance} miles
    and I would drive #{distance} more
    Just to be the man who drove #{distance * 10}
    and fall right at your door"
  end

  def paint_the_car
    "I am #{color}"
  end

  def start
    if @start == false
      @start = true
      "Starting UP!"
    else
      "Already Started Lil' Homie"
    end
  end

end

my_car = Car.new
puts my_car.horn
puts my_car.drive(500)
my_car.color = 'putre'
puts my_car.paint_the_car
my_car.wheel_count = 18
puts my_car.wheel_count
puts "This sweet ride is sitting on #{my_car.wheel_count} wheels"
my_second_car = Car.new
my_second_car.wheel_count = 2
# puts my_second_car.wheel_count
puts "This other ride is sitting on #{my_second_car.wheel_count} wheels"
puts my_second_car.start
puts my_second_car.start

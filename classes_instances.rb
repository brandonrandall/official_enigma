require 'pry'

# class Bike
#
#   bike_1 = Bike.new
#   p "#{bike_1} is a Huffy"
#
#   bike_2 = Bike.new
#   p "#{bike_2} is a Mongoose"
#
# end
#
# class Computer
#
#   computer_1 = Computer.new
#   p "#{computer_1} is a Mac"
#
#   computer_2 = Computer.new
#   p "#{computer_2} is a HP"
#
# end

class Fridge
#
  attr_reader :brand, :temp, :contents, :plugged_in
  attr_accessor :color


  def initialize(brand, color, temp, plugged_in = true, contents)
    @brand      = brand
    @color      = color
    @temp       = temp
    @plugged_in = plugged_in
    @contents   = contents
  end

  def temp_in_celsius
    ((@temp - 32) * 5.0/9.0).round(2)
  end

  def add_contents(item)
    store = []
    @contents << item
  end

  # def color=(color)
  #   @color = color
  # end

  fridge_1 = Fridge.new("Frigidare", "Black", 36, true, ["carrots", "milk"])
  fridge_1.color = "periwinkle"
  p "Number 1: #{fridge_1.temp_in_celsius} degrees is cold and dis fridge culluh is #{fridge_1.color}"

  fridge_2 = Fridge.new("GE", "Stainless Steel", 0, false, [])
  p "Number 2: #{fridge_2.brand} is sucky"

  fridge_2.add_contents(["ham shanks", "gatorade", "jelly"])

  fridge_3 = Fridge.new("Samsung", "White", 69, true, ["leftover chinese", "ice cream"])
  p "Number 3: is #{fridge_3.color}, which is the color of milk"

  # binding.pry
  puts "------------"

class Person

  attr_reader :language, :name

  def initialize(name, birthyear, language, alive = true)
    @name       = name
    @birthyear  = birthyear
    @language   = language
    @alive      = alive
  end

end

  person_1 = Person.new("Beth", "1995", "English", true)
  p " #{person_1.language} is #{person_1.name}'s first language"

  # person_2 = Person.new("Brandon", "1985", "Spanish", false)
  # p " #{person_1} is the second in line"

# binding.pry
  p "-----"
#
#   def add_item(item)
#     @contents << item
#   end
end
#

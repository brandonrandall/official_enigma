require 'pry'


male_superheroes = ["Magneto", "Hulk", "Venom", "Sabretooth", "Human Torch"]
female_superheroes = ["Storm", "Jean Grey", "Psyloche", "Black Cat", "Jubilee"]
gpas = [3.8, 2.4, 3.4]

max_gpas = gpas.max_by(2) do |gpa|
  gpa
end

total = gpas.reduce(0) do |sum,age|
  sum + gpa
end

# binding.pry

# new_gpas = gpas.reduce(:+)
#
# favorite_heroes_by_gender = female_superheroes.zip(male_superheroes)
#
# counted = gpas.count do |gpa|
#   gpa == 3.8
# end
#
# grouped = female_superheroes.group_by do |girl|
#   girl.length <= 5
# end
#
# grouped = female_superheroes.group_by do |girl|
#   girl.length
# end
# binding.pry

## find_all/select

the_ones = male_superheroes.find_all do |superhero|
  superhero.include?("man")
end

the_ones_by_length = male_superheroes.sort_by do |superhero|
  superhero.length
end

puts the_ones_by_length
# the_one = male_superheroes.find do |superhero|
#   superhero.include?("man")
# end
#
# the_people_without_to = male_superheroes.reject do |superhero|
#   superhero.include?("to")
# end
#
# the_short_named_heroes = male_superheroes.any? do |superhero|
#   superhero.length <= 5
#   superhero
# end

the_short_named_heroes = male_superheroes.map do |superhero|
  binding.pry
  superhero.length <= 5

  # end
end

# x = male_superheroes.all? do |superhero|
#   superhero.length >= 2
# end



binding.pry
# puts the_one
# puts the_ones
# puts the_people_without_to
puts the_short_named_heroes

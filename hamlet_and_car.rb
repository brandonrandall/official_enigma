require 'pry'

class Horacio
end

h = Horacio.new

class Guard

  attr_reader :name

  def initialize(name)
    @status = :guarding
    @name = name
  end

  def march
    @status = :marching
  end

  def halt
    @status = :guarding
  end

  def current_status
    @status
  end
end

puts g1  = Guard.new("A Guard has no name")
puts g2  = Guard.new("A Guard also has no name")
puts g3  = Guard.new("A Guard still has no name")
binding.pry

puts g.name
puts g3.name
binding.pry

[g, g2, g3].each do |g|
  binding.pry
  g.march
end
# or
# g.march
# g2.march
# g3.march
# -------------
puts g.current_status
puts g2.current_status
binding.pry

g.halt
binding.pry

puts g.current_status

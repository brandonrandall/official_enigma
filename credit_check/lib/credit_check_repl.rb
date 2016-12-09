require_relative 'credit_check'
require 'pry'

puts "welcome to cc validator"
puts "enter a cc number"

user_input = gets.chomp.chars.map(&:to_i)
# binding.pry
if user_input.count == 16

  if user_input.all? do |number|
      number.is_a?(Integer)
    end
      puts CreditCheck.new(user_input.join).validate
   else
      puts "please enter numbers"
   end
else
  puts "YOU A FOO"
end

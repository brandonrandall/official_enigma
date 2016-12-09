require 'pry'

count = 0
stopper = false

while stopper == false
  count += 1
  binding.pry
end

stopper = true
binding.pry

# puts "Ohhhh Baby"
# count = 10
# minute = Time.new.strftime("%M").to_i
#
# while minute.even?
#   puts "The time is #{minute}"
#   minute = Time.new.strftime("%M").to_i
# end

# 5.times do |i|
#   puts "the round is #{5 - i}"
# end

# (1..10).reduce(0) {|sum,item| sum += item.length}

# minute = 8
#
# if minute % 5 == 0
#   puts "#{minute} is divisible by 5"
# elsif minute.odd?
#   puts "#{minute} is odd."
# # else minute.even?
# else
#   return
#   # puts "#{minute} is even."
# end
#   puts "we done"

# puts "enter a word"
# input = gets.chomp
#   if input.length.even?
#       puts "even"
#     if input.end_with?("a")||
#        input.end_with?("e")||
#        input.end_with?("i")||
#        input.end_with?("o")||
#        input.end_with?("u")
#       puts "vowel"
#     elsif input[-1].include?("y")
#       puts "ends with y"
#     elsif input[-1].include?("aeiou")
#       puts "consanant"
#     else
#       puts "fuck you"
#     end
#   elsif input.length.odd?
#     puts "odd"
#     if input[-1].include?("aeiou")
#       puts "vowel"
#     elsif input[-1].include?("y")
#       puts "ends with y"
#     elsif !input[-1].include?("aeiou")
#       puts "consanant"
#     else
#       puts "fuck you"
#     end
#   else
#     puts "whatever man"
#   end

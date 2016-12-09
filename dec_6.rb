numbers = (1..100).to_a
evens = []
odds = []
# p numbers
x = numbers.each do |number|
  if number.even? == true
    evens << number
    File.open("evens.txt", "w+") do |even|
      even.puts(a)
    end

  elsif number.odd? == true
    odds << number
  else
    puts "nothing"
  end
  evens
  odds
end



# p x

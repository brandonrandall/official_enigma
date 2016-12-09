# file = File.read('example.txt')
# puts file

file = File.read(ARGV[0])
puts file

file = File.read(ARGV[1])
puts file

file = File.read(ARGV[2])
puts file
# #
# file = File.write('hakeem.txt', 'I am very happy to be here!')
# puts file

# file = File.write('example.rb', 'class Project
#   def initialize
#     puts "I cant believe this stuff"
#   end
# end')
# file = FIleUtils.touch 'example3.txt'

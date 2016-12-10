require 'pry'

#read the input file
# binding.pry
input_filename = ARGV[0]
unencrypted_message = File.read input_filename

require './lib/enigma.rb'
#magic encryptiony shit
encrypted_message =
  Enigma.new(unencrypted_message)
  .encrypt
#write the output file
output_filename = ARGV[1]
File.write output_filename, encrypted_message
#print the file, key, and date
puts "Created #{output_filename} with the key 37293 and date 121016"

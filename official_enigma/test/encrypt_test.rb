require 'minitest/autorun'
require 'minitest/emoji'
require './lib/e.rb'

class EnigmaTest < Minitest::Test

  def test_if_enigma_exitsts
    enigma = Enigma.new
    assert_instance_of Enigma, enigma
  end

  def test_can_create_key
    key_generator = KeyGenerator.new
  end

end

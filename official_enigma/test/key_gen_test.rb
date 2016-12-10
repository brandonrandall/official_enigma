require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require '../lib/key_gen'

class KeyGenTest < Minitest::Test

  def test_key_generator_exists
    key_gen = KeyGen.new(12345)
    assert_instance_of KeyGen, key_gen
  end

  def test_key_generator_can_insert_key
    # skip
    key_gen = KeyGen.new(12345)
    assert_equal [12345], key_gen.insert(12345)
  end

  def test_key_has_to_be_a_fixnum
    key_gen = KeyGen.new(12345)
    assert_equal Fixnum, key_gen.key.class
  end

  def test_key_has_to_be_5_digits
    # skip
    key_gen = KeyGen.new(12345)
    key_gen.insert(12345)
    assert_equal 5, key_gen.key_count
  end

  def test_key_has_rotation
    key_gen = KeyGen.new(12345)
    key_gen.insert(12345)
    assert_equal 5, key_gen.key_count
    assert_equal 12, key_gen.first_rotation
    assert_equal 23, key_gen.second_rotation
    assert_equal 34, key_gen.third_rotation
    assert_equal 45, key_gen.fourth_rotation
  end

end

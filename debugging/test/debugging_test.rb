require 'minitest/autorun'
require './lib/debugging'
require 'minitest/emoji'

class MatherTest < Minitest::Test

  def test_class_mather_exists
    mather = Mather.new(4)
    assert_equal Mather, mather.class
  end

  def test_mather_can_double
    mather = Mather.new(4)
    assert_equal [8], mather.doubler(4)
  end

  def test_mather_can_square
    mather = Mather.new(4)
    assert_equal 16, mather.squarer(4)
  end
end

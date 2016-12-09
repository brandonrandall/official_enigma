require 'minitest/autorun'
require 'minitest/pride'
require './lib/calculator.rb'

class CalculatorTest < Minitest::Test

  def test_calculator_exists
    # assert Car.new
    calc = Calculator.new
    assert_instance_of Calculator, calc
  end

  def test_can_add_one_and_one
    calc = Calculator.new
    assert_equal 2, calc.add(1,1)
  end

  def test_can_add_any_numbers
    calc = Calculator.new
    assert_equal 10, calc.add(6,4)
  end

  def test_can_subtract_numbers
    calc = Calculator.new
    assert_equal 20, calc.subtract(30,10)
  end

  def test_will_receive_only_numbers
    calc = Calculator.new
    assert_equal "invalid", calc.validate
  end
end

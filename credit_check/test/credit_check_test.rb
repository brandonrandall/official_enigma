require './lib/credit_check'
require 'minitest/autorun'
require 'minitest/pride'

class CreditCheckTest < Minitest::Test

  def setup
    card_number  = "4929735477250543"
    other_card_number = "5541801923795240"
    @credit_check = CreditCheck.new(card_number)
    @bad_credit_check = CreditCheck.new(other_card_number)

  end

  def test_a_credit_card_number_can_be_accepted
    assert_equal "3450527745379294", @credit_check
                                      .card_number
  end

  def test_can_turn_strings_into_array_of_integers
    assert_equal [3, 4, 5, 0, 5, 2,
                  7, 7, 4, 5, 3, 7, 9, 2, 9, 4], @credit_check
                                    .string_to_integer
  end

  def test_can_double_every_other_number
    assert_equal [3, 8, 5, 0, 5, 4, 7,
                  14, 4, 10, 3, 14, 9, 4, 9, 8], @credit_check
                                        .double_every_other
  end

  def test_cas_sum_each_number_that_was_doubled
    assert_equal [3, 8, 5, 0, 5, 4, 7,
                  5, 4, 1, 3, 5, 9, 4, 9, 8], @credit_check
                                      .sum_all_doubles
  end

  def test_card_number_is_valid
    assert_equal "The number is NOT valid!", @bad_credit_check
                                          .validate
  end
  #
  def test_card_can_validate_other_numbers
    other_card_number = "5541808923795240"
    @credit_check = CreditCheck.new(other_card_number)
    assert_equal "The number is valid!", @credit_check
                                            .validate
  end
end
  # def test_can_insert_credit_card_number
  #   credit_check = CreditCheck.new
  #   credit_check.insert("4929735477250543")
  #   assert_equal ["4929735477250543"],
  #   credit_check.card_number
  # end
  #
  # def test_can_reverse_card_number
  #   credit_check = CreditCheck.new
  #   credit_check.insert("4929735477250543")
  #   assert_equal ["3450527745379294"],
  #   credit_check.reverse
  # end
  #
  # def test_can_double_a_number
  #   credit_check = CreditCheck.new
  #   credit_check.insert("4")
  #   assert_equal 8, credit_check.double
  # end
  #
  # def test_can_double_every_other_number
  #   credit_check = CreditCheck.new
  #   credit_check.insert("1234")
  #   assert_equal [1,2,3,4],
  #   credit_check.turn_s_to_i
  # end

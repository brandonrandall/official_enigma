require 'pry'

class CreditCheck

  attr_reader :card_number

  def initialize(card_number)
    @card_number = card_number.reverse
  end

  def string_to_integer
    card_number.chars.map do |number|
      number.to_i
    end
  end

  def double_every_other
    # binding.pry
    doubled_numbers = []
    string_to_integer.each_with_index do |number, index|
      if index.odd?
        doubled_numbers << number * 2
      else
        doubled_numbers << number
      end
    end
    doubled_numbers
  end

  def sum_all_doubles
    double_every_other.map do |number|
      if number > 9
        split_and_add_number(number)
      else
        number
      end
    end
  end

  def split_and_add_number(number)
    # binding.pry
    split_up = number.to_s.chars.map do |split_number|
      split_number.to_i
    end
    split_up.reduce(:+)
  end

  def validate
    final_sum = sum_all_doubles.reduce(:+)
    if final_sum % 10 == 0
      "The number is valid!"
    else
      "The number is NOT valid!"
    end
  end
end

if __FILE__ == $0
  CreditCheck.new("5541808923795240").validate
end

  # attr_reader :card_number
  #
  # def initialize
  #   @card_number = []
  #   @valid = false
  # end
  #
  # def insert(card_number)
  #   @card_number << (card_number)
  # end
  #
  # def reverse
  #   @card_number << (card_number).pop
  #   .to_s.reverse
  # end
  #
  # def double
  #   @card_number.pop.to_i * 2
  # end
  #

    # @card_number.each_with_index do |number, index|
    #   binding.pry
    #   # want to multiply every other digit
    #   # if an even number represents the number, multiply it by two
    #   number * 2 if index % 2 != 0
    #   end
    # end

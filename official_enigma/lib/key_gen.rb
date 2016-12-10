class KeyGen
  attr_accessor :key

  def initialize(key)
    @key = key
  end

  def insert(five_digit_input)
    collected_key = []
    # binding.pry
    @key = five_digit_input
            .to_s.chars
            # binding.pry
    if @key.count == 5
      collected_key << five_digit_input
    end
  end

  def key_count
    @key.count
  end

  def first_rotation
    
  end

  def second_rotation
  end

  def third_rotation
  end

  def fourth_rotation
  end
end

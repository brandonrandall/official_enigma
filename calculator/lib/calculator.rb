class Calculator

  def add(input1, input2)
    input1 + input2
  end

  def subtract(input1, input2)
    input1-input2
  end

  def validate
    if input1.class == Fixnum

    elsif !input1.class == Fixnum
      "invalid"

  end
end

class Triangle

  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    if condition

    else
      @a = a
      @b = b
      @c = c
    end
  end

  def valid?(a, b, c)
    if a <= 0 || b <= 0 || c <= 0
      false
    elsif a + b < c || a + c < b || b + c < a
      false
    else
      true
    end
  end

  def kind
    if @a == @b && @a == @c
      :equilateral
    elsif @a == @b && @a != @c
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError

  end
end

class Triangle

  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    
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
    if !valid?(a, b, c)
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.msg
      end
    else
      if @a == @b && @a == @c
        :equilateral
      elsif (@a == @b && @a != @c) || (@a == @c && @a != @b) || (@c == @b && @a != @c)
        :isosceles
      else
        :scalene
      end
    end
  end

  class TriangleError < StandardError

    def msg
      "The Triangle with these side lenghts isn't valid!"
    end
  end
end

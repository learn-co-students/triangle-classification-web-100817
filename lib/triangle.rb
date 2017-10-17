class Triangle

  attr_accessor :a, :b, :c, :equilateral, :isosceles, :scalene

  def initialize(side1, side2, side3)
    @a = side1
    @b = side2
    @c = side3
  end

  def kind
    if a + b <= c || a + c <= b || b + c <= a || a <= 0 || b <= 0 || c <= 0
      raise TriangleError
      elsif a == b && b == c && a == c
          return :equilateral
        elsif a == b || b == c || a == c
          return :isosceles
        else
          return :scalene
        end
      end
end

class TriangleError < StandardError
  def message
    "Triangle Error"
  end
end

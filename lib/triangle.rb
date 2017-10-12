require 'pry'

class Triangle

  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if triangleValid?
      if self.a == self.b && self.a == self.c
        #all sides equal
        :equilateral
      elsif self.a == self.b || self.a == self.c || self.b == self.c
        #two sides equal
        :isosceles
      elsif self.a != self.b && self.a != self.c && self.b != self.c
        #no sides equal
        :scalene
      end
    else
      raise TriangleError
    end
  end

  def triangleValid?
    triangle_inequality = ((self.a + self.b) > self.c) && ((self.a + self.c) > self.b) && ((self.b + self.c) > self.a)
    sides_exist = (self.a > 0) && (self.b > 0) && (self.c > 0)
    triangle_inequality && sides_exist
  end

end

class TriangleError < StandardError
  def message
    "This is not a valid triangle"
  end
end

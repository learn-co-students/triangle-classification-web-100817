class Triangle
  attr_reader :side1, :side2, :side3
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if valid
      if self.side1 == self.side2 && self.side1 == self.side3
         :equilateral
      elsif self.side1 == self.side2 || self.side2 == self.side3 || self.side1 == self.side3
         :isosceles
      else
         :scalene
       end
    else
      raise TriangleError
    end
  end

  def valid
    inequality = (self.side1 + self.side2) > self.side3 && (self.side1 + self.side3) > side2 && (self.side2 + self.side3) > self.side1
    isnotzero = self.side1 > 0 && self.side2 > 0 && self.side3 > 0
    inequality && isnotzero
  end
end

class TriangleError < StandardError
  def message
    "Triangle sides can not be zero and must follow triangle inequality!"
  end
end

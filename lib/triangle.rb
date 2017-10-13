require "pry"
class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def valid_sides?
    self.side1 > 0 && self.side2 > 0 && self.side3 > 0
  end

  def valid?
    if valid_sides? && (self.side1 + self.side2 > self.side3 && self.side2 + self.side3 > self.side1 && self.side1 + self.side3 > self.side2)
      true
    else
      false
    end
  end

  def equilateral?
    self.side1 == self.side2 && self.side2 == self.side3
  end

  def isosceles?
    self.side1 == self.side2 || self.side2 == self.side3 || self.side1 == self.side3
  end

  def kind
    if valid? && equilateral?
      :equilateral
    elsif valid? && isosceles?
      :isosceles
    elsif valid?
      :scalene
    else
      begin
        raise TriangleError
      # rescue TriangleError => error
      #   puts error.message
      end
    end
  end
end

class TriangleError < StandardError
  def message
    "That's not a legal triangle!"
  end
end
# Pry.start
# Triangle.new(7, 3, 2).kind
# Triangle.new(2, 4, 2).kind
# Triangle.new(1, 1, 3).kind

require 'pry'
class Triangle

  attr_reader :a, :b, :c

  def initialize(side_a, side_b, side_c)
    @a = side_a
    @b = side_b
    @c = side_c
  end

  def kind
    valid?
      if a == b && b == c
        :equilateral
      elsif a == b || b == c || a == c
        :isosceles
      else
        :scalene
      end
    end

  def valid?
    valid_ex = [(a + b > c), (a + c > b), (c + b > a)]  #examples of valid triangle
    [a,b,c].each {|side| valid_ex << false if side <= 0}  #if any side is <= 0, add false to valid_ex
    #binding.pry
    if valid_ex.include?(false) #if valid_ex has any false value
      raise TriangleError #raise our custom error
    end
    end

end

  # write code here


class TriangleError < StandardError
  def message
  end
end

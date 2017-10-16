class Triangle
  # write code here
  attr_reader :x, :y, :z

  def initialize(x,y,z)
    @x = x
    @y = y
    @z = z
  end

  def kind
    if x + y <= z || x + z <= y || y + z <= x || x + y + z == 0
      raise TriangleError
    elsif  x == y && y == z
      :equilateral
    elsif x == y || x == z || y == z
      :isosceles
    else
      :scalene
    end
  end

  # def validate_triangle
  #   real_triangle = [(x + y > z), (x + z > y), (y + z > x)]
  #   [x, y, z].each { |s| real_triangle << false if s <= 0 }
  #   raise TriangleError if real_triangle.include?(false)
  # end

end

class TriangleError < StandardError
end

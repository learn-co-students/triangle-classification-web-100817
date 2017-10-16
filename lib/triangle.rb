require 'pry'

class Triangle
  attr_accessor :side_one, :side_two, :side_three, :equilateral, :isosceles, :scalene

  def initialize(side_one,side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end


  def kind


  if @side_one + @side_two <= @side_three || (@side_one + @side_three)<= @side_two || (@side_two + @side_three) <= @side_one || @side_one <= 0 || @side_two <= 0 || @side_three <= 0
    raise TriangleError
  elsif @side_one == @side_two && @side_one == @side_three && @side_two == @side_three
    :equilateral
  elsif @side_one != @side_two && @side_one != @side_three && @side_two != @side_three
    :scalene
  elsif (@side_one == @side_two && @side_one != @side_three) || (@side_one = @side_three && @side_one != @side_two) || (@side_two == @side_three && @side_two != @side_one)
    :isosceles
  end

end

end

class TriangleError < StandardError
  def message
    "wrong size"
  end
end

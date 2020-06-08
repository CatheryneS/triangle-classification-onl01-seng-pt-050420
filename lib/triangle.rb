class Triangle
  attr_accessor :side_a, :side_b, :side_c, :equilateral, :isosceles, :scalene
  
  def initialize(side_a, side_b, side_c)
      @side_a = side_a
      @side_b = side_b
      @side_c = side_c
  end
  
  def kind 
    sides = [side_a, side_b, side_c]
    ineq = [side_a+side_b > side_c, side
    if sides.min <= 0 
      raise TriangleError
    end
      if @side_a == @side_b && @side_a == @side_c 
        :equilateral
      elsif @side_a == @side_b || @side_a == @side_c || @side_b == @side_c
        :isosceles
      else
        :scalene
      end
  end

  
  class TriangleError < StandardError
    def message
      "Length must be greater than zero."
    end
  end
end

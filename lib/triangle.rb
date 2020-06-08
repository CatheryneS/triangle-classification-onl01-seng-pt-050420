class Triangle
  attr_accessor :side_a, :side_b, :side_c, :equilateral, :isosceles, :scalene
  
  def initialize(side_a, side_b, side_c)
      @side_a = side_a
      @side_b = side_b
      @side_c = side_c
  end
  
  def kind 
    check_triangle
      if @side_a == @side_b && @side_a == @side_c 
        :equilateral
      elsif @side_a == @side_b || @side_a == @side_c || @side_b == @side_c
        :isosceles
      else
        :scalene
      end
  end
  
  def check_triangle
    triangle = [(side_a + side_b > side_c), (side_a + side_c > side_b),
      (side_b + side_c > side_a)]
    [side_a, side_b, side_c].each do |side|
      triangle << false if side <= 0 
    raise TriangleError if triangle.include?(false)
  end
  
  #class TriangleError < StandardError
   # def message
    #  "Length must be greater than zero."
  #  end
#  end
end

class Triangle
  attr_accessor :side_a, :side_b, :side_c, :equilateral, :isosceles, :scalene
  
  def initialize(side_a, side_b, side_c)
      @side_a = side_a
      @side_b = side_b
      @side_c = side_c
  end
  
  def kind 
    if @side_a == @side_b == @side_c
  end
  
  class TriangleError < StandardError
    def message
      "Length must be greater than zero."
    end
  end
end

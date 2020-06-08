class Triangle
  attr_accessor :equilateral, :isosceles, :scalene
  
  def initialize(side_a, side_b, side_c)
      @side_a = side_a
      @side_b = side_b
      @side_c = side_c
  end
  
  def kind 
    if @side_a > 0 && @side_b > 0 && @side_c > 0
      
    end
  end
end

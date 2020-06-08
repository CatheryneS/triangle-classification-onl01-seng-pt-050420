class Triangle
  attr_accessor :equilateral, :isosceles, :scalene
  
  def initialize(side_a, side_b, side_c)
      @side_a = side_a
      @side_b = side_b
      @side_c = side_c
  end
  
  def kind 
    if @side_a < 0 && @side_b < 0 && @side_c < 0
      begin 
        raise TriangleError
      rescue TriangleError => error 
          puts error.message
      end
    elsif @side_a == @side_b || @side_b == @side_c || @side_a == @side_c
      @equilateral
    elsif @side_a == @side_b 
      
    end
  end
  
  class TriangleError < StandardError
    def message
      "Length must be greater than zero."
    end
  end
end

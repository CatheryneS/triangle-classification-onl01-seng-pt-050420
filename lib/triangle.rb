class Triangle
  attr_accessor :side_a, :side_b, :side_c, :equilateral, :isosceles, :scalene
  
  def initialize(side_a, side_b, side_c)
      @side_a = side_a
      @side_b = side_b
      @side_c = side_c
  end
  
  def kind 
    sides = [side_a, side_b, side_c]
    ineq = [side_a+side_b > side_c, side_a + side_c > side_b, side_b + side_c > side_a]
    
    if sides.min <= 0 || ineq.include?(false)
      begin
      raise TriangleError 
      rescue TriangleError => error 
        puts error.message
      end
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

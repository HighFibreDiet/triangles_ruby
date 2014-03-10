class Triangle
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def type
    if @side1 + @side2 <= @side3 || @side1 + @side3 <= @side2 || @side2 + @side3 <= @side1
      'not a triangle'
    elsif @side1 == @side2 && @side1 == @side3
      'equilateral'
    elsif @side1 == @side2 || @side2 == @side3 || @side1 == @side3
      'isoceles'
    else
      'scalene'
    end
  end

  def side1
    @side1
  end

  def side2
    @side2
  end

  def side3
    @side3
  end
end

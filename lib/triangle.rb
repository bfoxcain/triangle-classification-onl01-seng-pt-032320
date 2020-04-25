class Triangle
  # write code here
  attr_accessor :base, :height, :hypotenuse, :equilateral, :isosceles, :scalene

  def initialize (base, height, hypotenuse)
    @base = base
    @height = height
    @hypotenuse = hypotenuse
  end

  def kind
   #  def kind
      if !(@base + @height > @hypotenuse) || !(@base + @hypotenuse > @height) || !(@height + @hypotenuse > @base)
        raise TriangleError
      else
        if (@base == @height) && (@height == @hypotenuse)
          return :equilateral
        elsif (@base == @height) || (@height == @hypotenuse) || (@hypotenuse == @base)
          return :isosceles
        else
          return :scalene
        end
      end
  end

  class TriangleError < StandardError
    #
  end
end

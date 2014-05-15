class Triangle
	attr_reader :a,:b,:c

  def initialize a,b,c
    @a = a
    @b = b
    @c = c
  end

  def kind
  	return sides
  	return 'Isoceletes' if isosceles?
    return 'Equilareral' if equilateral?
  end

  private

  def sides
    return 'Ilegal Triangle' if illegal?
    return 'Violate Inequality' if violates_inequality?
    return 'Impossible Length Side' if impossible_length_side?
  end

 def equilateral?
    return true if @a==@b && @c==@a
    return true if @a==@b && @c==@a
  end

  def isosceles?
    return true if @a==@b && @b!=@c
    return true if @a==@c && @c!=@b
    return true if @b==@c && @a!=@b
  end

  def illegal?
  end

  def violates_inequality?
    return true if ((@a+@b)>@c && (@a+@c)>@b && (@c+@b)>@a)
  end

  def impossible_length_side?
    true if ((@a || @b ||@c)<1)
  end
end
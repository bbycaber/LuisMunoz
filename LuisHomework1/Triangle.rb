class Triangle
	attr_reader :a,:b,:c

  def initialize a,b,c
    @a = a
    @b = b
    @c = c
  end

  def kind
  end

  private

  def sides
  end

  def equilateral?
  end

  def isosceles?
  end

  def illegal?
  end

  def violates_inequality?
  end

  def impossible_length_side?
  end
end
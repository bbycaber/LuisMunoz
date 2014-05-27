class Team
	attr_reader :players, :name
  
  def initialize(name)
  	@name = name
  	@player =[]
  end

end
class Team
	attr_reader :players, :name
  
  def initialize(name)
  	@name = name
  	@players =[]
  end

  def add_player(name,position)
  	player = Player.new(name,position)
  	@players.push(player)
  end

  def remove_player(name,position)

  end

  def filter_by_position(position)
  end

end
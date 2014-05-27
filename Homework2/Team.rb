class Team
	attr_reader :players, :name
  
  def initialize(name)
  	@name = name
  	@players =[]
  end

  def add_player(name,position)
  	player = Player.new(name,position)
  	players.push(player)
  end

  def remove_player(name,position)
  	player = Player.new(name,position)
  	players.pop(player)
  end

  def filter_by_position(position)
  end

  private
# filter if the player is in the team
  def filter(player)
  end

end


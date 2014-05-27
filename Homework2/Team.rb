class Team
	attr_reader :players, :name
  
  def initialize(name)
  	@name = name
  	@players =[]
  end

  def add_player(name,position)

  	player = create_player(name,position)
  	if(player.is_a? Player)
  	  players.push(player)
  	else
  		puts "Is in the team"
  	end
  	
  end

  def remove_player(name,position)
  	player = create_player(name,position)
  	players.pop(player)
  end

  def filter_by_position(position)
	filters = players.select{|player| player.position == position}
	puts name
	puts "Players"
	filters.each {|player| print "Name: " + player.name + " Position: " + player.position}
  end

  private
# filter if the player is in the team
  def filter(player)
  	filters = players.select{|player| player.position == position}
  	if(filters.count>0) 
  		return true
  	else
  		return false;
  end

  def create_player(name,position)
  	if (filter(Player.new(name,position)) == false)
  		Player.new(name,position)
  	end
  end

end
end



class Player
attr_reader :name,:position

  def initialize(name,position)
  	@name = name
  	@position = position
  end
end

class Team
	attr_reader :players, :name, :count
  
  def initialize(name)
  	@name = name
  	@players =[]
  end

  def add_player(name,position)

  	player = create_player(name,position)
  	if(player.is_a? Player)
  	  players.push(player)
  	else
  		Raise  "Is in the team"
  	end
  	
  end

  def remove_player(name,position)
  	player = create_player(name,position)
  	players.delete_if{|player| players}
  end

  def filter_by_position(position)
	filters = players.select{|player| player.position == position}
	puts name
	puts "Players"
	filters.each {|player| print "Name: " + player.name + " Position: " + player.position}
  end

  def count_payers()
  	@players.count
  end

  private
# filter if the player is in the team
  def filter(player)
  	filters = players.select{|player2| player2 == player}
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



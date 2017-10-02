class SportsTeam
  attr_accessor :team_name, :players, :coach

  def initialize(team_name, players, coach)
      @team_name = team_name
      @players = players
      @coach = coach
  end

  def team_name
    return @team_name
  end

  def players
    return @players
  end

  def coach
    return @coach
  end

  def set_coach(new_coach)
    @coach = new_coach
  end

  def add_player(player)
    @players << player
  end

  def player_name_check(check)
    @players.include?(check)
  end

end

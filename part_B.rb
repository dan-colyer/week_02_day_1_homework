class SportsTeam
  attr_accessor :team_name, :players, :coach, :points

  def initialize(team_name, players, coach, points)
      @team_name = team_name
      @players = players
      @coach = coach
      @points = points
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

  def adjust_points(win_or_lose)
    @points += 1 if win_or_lose == "win"

  end

end

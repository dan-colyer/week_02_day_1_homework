require('minitest/autorun')
require('minitest/rg')
require_relative('../part_B.rb')

# Part B
#
# Now we would like you to make a class that represents a sports team.
#
#     Make a class to represent a Team that has the properties Team name (String), Players (Array of strings) and a Coach (String).
#     For each property in the class make a Getter method than can return them.
#     Create a setter method to allow the coach's name to be updated.
#     Refactor the class to use attr_reader or attr_accessor instead of your own getter and setter methods.
#     Create a method that adds a new player to the player's array.
#     Add a method that takes in a string of a player's name and checks to see if they are in the players array.
#     Add a points property into your class that starts at 0.
#     Create a method that takes in whether the team has won or lost and updates the points property for a win.

class TestSportsTeam < MiniTest::Test
  @sports_team

  def setup
    @sports_team = SportsTeam.new("Reds", ["Player_1", "Player_2"], "Coach Carter")
  end

# Test 1, 2 & 3
  def test_team
    assert_equal("Reds", @sports_team.team_name)
    assert_equal(["Player_1", "Player_2"], @sports_team.players)
    assert_equal("Coach Carter", @sports_team.coach)
  end

# Test 4
  def test_set_coach
    @sports_team.set_coach("Coach XXX")
    assert_equal("Coach XXX", @sports_team.coach)
  end
end


# pry(main)> knight_rider.total_salary
# # => 2600000
# ```

require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'
require './lib/show'

class ShowTest < Minitest::Test

  def setup
    @kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    @michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    @knight_rider = Show.new("Knight Rider", "Glen Larson", [@michael_knight, @kitt])
  end

  def test_it_exists
    @knight_rider = Show.new("Knight Rider", "Glen Larson", [@michael_knight, @kitt])
    assert_instance_of Show, @knight_rider
  end

  def test_initialize
    assert_equal "Knight Rider", @knight_rider.name
    assert_equal "Glen Larson", @knight_rider.creator
    assert_equal [@michael_knight, @kitt], @knight_rider.characters
  end

  def test_knight_rider_total_salary
    assert_equal 1000000, @kitt.salary
    assert_equal 1600000, @michael_knight.salary
    assert_equal 2600000, @knight_rider.total_salary
  end
end

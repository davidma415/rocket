require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test
  def setup
    @rocket = Rocket.new
  end

  def test_name_updater
    expected = 'Cat'
    @rocket.name = 'Cat'
    actual = @rocket.name
    assert_equal(expected, actual)
  end

  def test_colour_updater
    expected = 'blue'
    @rocket.colour = 'blue'
    actual = @rocket.colour
    assert_equal(expected, actual)
  end

  def test_lift_off
    expected = true
    @rocket.lift_off
    actual = @rocket.flying?
    assert actual
  end

  def test_landing
    @rocket.lift_off
    expected = false
    @rocket.land
    actual = @rocket.flying?
    assert_equal(expected, actual)
  end
end

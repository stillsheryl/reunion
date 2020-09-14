require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'

class ActivityTest < Minitest::Test

  def test_it_exists
    activity = Activity.new("Brunch")

    assert_instance_of Activity, activity
  end

  def test_it_has_attributes
    activity = Activity.new("Brunch")

    assert_equal "Brunch", activity.name
    expected = {}
    assert_equal expected, activity.participants
  end

end

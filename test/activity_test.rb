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

  def test_can_add_participants
    activity = Activity.new("Brunch")
    activity.add_participant("Maria", 20)

    expected = {"Maria" => 20}
    assert_equal expected, activity.participants

    activity.add_participant("Luther", 40)
    expected2 = {"Maria" => 20, "Luther" => 40}
    assert_equal expected2, activity.participants
  end

  def test_calculates_total_cost
    activity = Activity.new("Brunch")
    activity.add_participant("Maria", 20)

    assert_equal 20, activity.total_cost

    activity.add_participant("Luther", 40)

    assert_equal 60, activity.total_cost
  end

  def test_can_split_cost
  activity = Activity.new("Brunch")
  activity.add_participant("Maria", 20)
  activity.add_participant("Luther", 40)

  assert_equal 30, activity.split
  end

end

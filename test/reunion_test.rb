require 'minitest/autorun'
require 'minitest/pride'
require './lib/reunion'

class ReunionTest < Minitest::Test

  def setup
    @reunion = Reunion.new("1406 BE")
  end

  def test_it_exists
    assert_instance_of Reunion, @reunion
  end

  def test_it_has_attributes
    assert_equal "1406 BE", @reunion.name
    assert_equal [], @reunion.activities
  end

end

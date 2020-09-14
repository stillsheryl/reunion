require_relative './activity'

class Reunion < Activity
  attr_reader :name, :activities
  def initialize(name)
    @name = name
    @activities = []
  end

  def add_activity(activity)
    @activities << activity
  end

  def breakout
    breakout = {}
    @participants.each do |name, cost|
      breakout[name] = name
    end
  end

  def total_cost
    @activities.sum do |activity|
      activity.total_cost
    end
  end

end

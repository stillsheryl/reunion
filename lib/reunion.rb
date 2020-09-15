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
    @activities.each do |activity|
      activity.owed.each do |name, cost|
        if breakout[name]
          breakout[name] += cost
        else
          breakout[name] = cost
        end
      end
    end
    breakout
  end

  def total_cost
    @activities.sum do |activity|
      activity.total_cost
    end
  end

  def summary
    breakout.each do |name, cost|
      "#{name}: #{cost}\n"
    end
  end

end

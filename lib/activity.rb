class Activity
  attr_reader :name, :participants, :total_cost
  def initialize(name)
    @name = name
    @participants = {}
    @total_cost = total_cost
  end

  def add_participant(name, cost)
    @participants[name] = cost
  end

  def total_cost
    @participants.values.sum
  end

  def split
    total_cost / @participants.count
  end

  def owed
    owed = {}
    @participants.each do |name, cost|
      owed[name] = split - cost
    end
    owed
  end

end

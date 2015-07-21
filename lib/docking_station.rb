require_relative 'bike'


class DockingStation
  DEFAULT_CAPACITY = 20
  attr_accessor :capacity

  def initialize
    @bikes = []
    @capacity = DEFAULT_CAPACITY
  end

  def release_bike
    fail "No bikes available" if empty?
    bikes.pop
  end

  def dock bike
    fail "There is no more space!" if full?
    bikes << bike
  end

  def bikes
    @bikes
  end

  private

  def full?
    bikes.length == capacity
  end

  def empty?
    bikes.length == 0
  end
end
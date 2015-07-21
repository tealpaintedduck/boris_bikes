require_relative 'bike'

class DockingStation
  def initialize
    @capacity = 1
    @number_of_bikes = 0
  end

  def capacity
    @capacity
  end

  def number_of_bikes
    @number_of_bikes
  end

  def release_bike
    fail "No bikes available" unless @bike
    @bike
  end

  def dock bike
    if @number_of_bikes + 1 <= @capacity
      @bike = bike
      @number_of_bikes += 1
    else
      fail "There is already a bike docked!"
    end
  end
end
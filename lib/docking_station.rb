require_relative 'bike'

class DockingStation
  def initialize
    @bikes = []
  end

  def bikes
    @bikes
  end

  def release_bike
    fail "No bikes available" if bikes.empty?
    bikes.pop
  end

  def dock bike
    if bikes.length < 20
      bikes << bike
    else
      fail "There is no more space!"
    end
  end
end
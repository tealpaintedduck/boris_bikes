require_relative 'bike'

class DockingStation
  def release_bike
    Bike.new
  end

  def bike_available?

  end

  def dock bike
  end
end
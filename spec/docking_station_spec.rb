require './lib/docking_station.rb'

describe DockingStation do
  it {should respond_to(:release_bike)}

  it "should release new bike" do
    station = DockingStation.new
    expect(station.release_bike).to be_instance_of Bike
  end
end


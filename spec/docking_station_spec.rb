require './lib/docking_station.rb'

describe DockingStation do
  it {should respond_to(:release_bike)}

  it "should release new bike" do
    expect(subject.release_bike).to be_instance_of Bike
  end
  it "should check if bike is working" do
    bike = Bike.new
    expect(bike).to be_working
  end

  it "should check if a bike is available" do
    expect(subject).to respond_to(:bike_available?)
  end

  it "should dock a bike" do
    expect(subject).to respond_to(:dock).with(1).argument
  end
end


require './lib/docking_station.rb'

describe DockingStation do

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

  it "releases working bikes" do
    subject.dock Bike.new
    bike = subject.release_bike
    expect(bike).to be_working
  end

  describe '#release_bike' do
    it "raises an error when there are no bikes available" do
      expect{ subject.release_bike }.to raise_error "No bikes available"
    end

    it {should respond_to(:release_bike)}

    it "should release new bike" do
      subject.dock Bike.new
      expect(subject.release_bike).to be_instance_of Bike
    end
  end
end


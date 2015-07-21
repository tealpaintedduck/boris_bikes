require './lib/docking_station.rb'

describe DockingStation do
  it "should initialize with an empty array of bikes" do
    expect(subject.bikes).to eq([])
  end

  it "should have a default capacity" do
    expect(subject.capacity).to eq(DockingStation::DEFAULT_CAPACITY)
  end

  it "should dock a bike" do
    expect(subject).to respond_to(:dock).with(1).argument
  end

  it "should raise an error when there is already a bike docked" do
    subject.capacity.times {subject.dock Bike.new}
    expect{ subject.dock Bike.new }.to raise_error "There is no more space!"
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

    it "should release new bike" do
      subject.dock Bike.new
      expect(subject.release_bike).to be_instance_of Bike
    end
  end
end


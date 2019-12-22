require 'docking_station'

describe DockingStation do

  before :each do
    @bike = Bike.new
  end

  it 'docks a bike' do
    expect(subject.dock(@bike)).to eq(@bike)
  end

  it 'tells you whether there is a bike' do
    subject.dock(@bike)
    expect(subject.bikes.last).to eq(@bike)
  end

  it 'has a default capacity of 20' do
    docking_station = DockingStation.new
    expect(docking_station.capacity).to eq(20)
  end

  it 'can be initialized with a custom capacity' do
    docking_station = DockingStation.new(1000)
    expect(docking_station.capacity).to eq(1000)
  end

  describe '#release_bike' do
    it 'releases a bike' do
      subject.dock(@bike)
      expect(subject.release_bike).to eq @bike
    end

    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

  describe '#dock' do
    it 'raises an error when docking station full' do
      subject.capacity.times { subject.dock(Bike.new) }
      expect { subject.dock(@bike) }.to raise_error 'Docking station full'
    end
  end

end
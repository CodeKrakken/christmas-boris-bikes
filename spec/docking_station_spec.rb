require 'docking_station'

describe DockingStation do
  let(:bike) { double :bike }

  it 'tells you whether there is a bike' do
    subject.dock(bike)
    expect(subject.bikes.last).to eq(bike)
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
      subject.dock(bike)
      allow(bike).to receive(:working?).and_return(true)
      expect(subject.release_bike).to eq bike
    end

    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end

    it 'will not release a broken bike' do
      allow(bike).to receive(:broken).and_return("Bike has been reported broken")
      bike.broken
      subject.dock(bike)
      allow(bike).to receive(:working?).and_return(false)
      expect { subject.release_bike } .to raise_error 'No bikes available'
    end
  end

  describe '#dock' do
    it 'docks a bike' do
      expect(subject.dock(bike)).to eq(bike)
    end

    it 'raises an error when docking station full' do
      subject.capacity.times { subject.dock(double(:bike)) }
      expect { subject.dock(bike) }.to raise_error 'Docking station full'
    end

  end

end
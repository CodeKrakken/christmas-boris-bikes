require 'docking_station'

describe DockingStation do

  before :each do
    @bike = Bike.new
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
      subject.dock(@bike)
      expect { subject.dock(@bike) }.to raise_error 'Docking station full'
    end
  end
  
  it 'docks a bike' do
    expect(subject.dock(@bike)).to eq(@bike)
  end

  it 'tells you whether there is a bike' do
    subject.dock(@bike)
    expect(subject.bike).to eq @bike
  end

end
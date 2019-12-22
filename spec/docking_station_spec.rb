require 'docking_station'

describe DockingStation do

  before :each do
    @bike = Bike.new
  end

  it 'releases a bike' do
    subject.dock(@bike)
    expect(subject.release_bike).to eq @bike
  end

  it 'releases a working bike' do
    expect(@bike.working?).to eq(true)
  end
  
  it 'docks a bike' do
    expect(subject.dock(@bike)).to eq(@bike)
  end

  it 'tells you whether there is a bike' do
    subject.dock(@bike)
    expect(subject.bike).to eq @bike
  end
end
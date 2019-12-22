require 'docking_station'

describe DockingStation do

  before :each do
    @bike = subject.release_bike
  end

  it 'responds to release_bike' do
    expect(subject).to respond_to :release_bike
  end

  it 'releases a working bike' do
    expect(@bike.working?).to eq(true)
  end
  
  it 'docks a bike' do
    expect(subject.dock(@bike)).to eq(@bike)
  end

  it 'tells you whether there is a bike' do
    expect(subject).to respond_to :bike
  end
end
require 'docking_station'

describe DockingStation do
  it 'responds to release_bike' do
    expect(subject).to respond_to :release_bike
  end

  it 'releases a working bike' do
    bike = subject.release_bike
    expect(bike.working?).to eq(true)
  end 
end
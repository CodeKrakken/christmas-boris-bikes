require 'van'

describe Van do 
  it 'responds to collect' do
    expect(subject).to respond_to(:collect)
  end

  describe '#collect' do
    let(:docking_station) { double :docking_station }
    let(:bike) { double :bike }

    it 'collects a broken bike from a docking station' do
      allow(bike).to receive(:working?).and_return(false)
      allow(docking_station).to receive(:dock).and_return(bike)
      docking_station.dock(bike)
      expect(subject.collect(bike, docking_station)).to eq(bike)
    end

    it 'does not collect a working bike from a docking station' do
      allow(bike).to receive(:working?).and_return(true)
      allow(docking_station).to receive(:dock).and_return(bike)
      docking_station.dock(bike)
      allow(docking_station).to receive(:class).and_return(DockingStation)
      expect { subject.collect(bike, docking_station) }.to raise_error("This bike does not need to be repaired")
    end

  end 
end

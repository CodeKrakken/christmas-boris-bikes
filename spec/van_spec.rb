require 'van'

describe Van do
  
  it 'responds to collect' do
    expect(subject).to respond_to(:collect)
  end

  describe '#collect' do
    let(:docking_station) { double :docking_station }
    let(:bike) { double :bike }
    let(:garage) { double :garage }
    

    it 'collects a broken bike from a docking station' do
      allow(bike).to receive(:working?).and_return(false)
      allow(docking_station).to receive(:dock).and_return(bike)
      allow(garage).to receive(:class).and_return(Garage)
      docking_station.dock(bike)
      allow(docking_station).to receive(:bikes)
      allow(docking_station.bikes).to receive(:include?).and_return(true)
      allow(docking_station.bikes).to receive(:delete).and_return(bike)
      expect(subject.collect(bike, docking_station)).to eq(bike)
    end

    it 'does not collect a working bike from a docking station' do
      allow(bike).to receive(:working?).and_return(true)
      allow(docking_station).to receive(:dock).and_return(bike)
      docking_station.dock(bike)
      allow(docking_station).to receive(:class).and_return(DockingStation)
      allow(docking_station).to receive(:bikes)
      allow(docking_station.bikes).to receive(:include?).and_return(true)
      expect { subject.collect(bike, docking_station) }.to raise_error("This bike does not need to be repaired")
    end

    it 'collects a working bike from a repair shop' do
      allow(bike).to receive(:working?).and_return(true)
      allow(garage).to receive(:bikes)
      allow(garage.bikes).to receive(:include?).and_return(true)
      allow(garage.bikes).to receive(:delete).and_return(bike)
      expect(subject.collect(bike, garage)).to eq(bike)
    end

    it 'does not collect a broken bike from the repair shop' do
      allow(bike).to receive(:working?).and_return(false)
      allow(garage).to receive(:bikes)
      allow(garage.bikes).to receive(:include?).and_return(true)
      allow(garage).to receive(:class).and_return(Garage)
      expect { subject.collect(bike, garage) }.to raise_error("This bike is in need of repair")
    end

    it 'does not collect a non existent bike' do
      allow(bike).to receive(:working?).and_return(false)
      allow(docking_station).to receive(:bikes)
      allow(docking_station.bikes).to receive(:include?).and_return(false)
      expect { subject.collect(bike, docking_station) }.to raise_error("Bike not found")
    end
  end
  
  describe '#deliver' do
    let(:docking_station) { double :docking_station }

    it 'removes a bike from its array upon delivery' do
      bike = double('bike')
      garage = double('garage')
      allow(docking_station).to receive(:bikes)
      allow(docking_station.bikes).to receive(:push).and_return(bike)
      allow(garage).to receive(:bikes)
      allow(garage.bikes).to receive(:include?).and_return(true)
      allow(bike).to receive(:working?).and_return(true)
      allow(garage.bikes).to receive(:delete)
      subject.collect(bike, garage)
      expect(subject.deliver(bike, docking_station)).to eq(bike)
    end

    it 'does not deliver a non existent bike' do
      bike_2 = double('bike')
      expect { subject.deliver(bike_2, docking_station) }.to raise_error("Bike not found")
    end
  end
end

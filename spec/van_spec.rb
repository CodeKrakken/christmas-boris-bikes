require 'van'

describe Van do
  it 'responds to collect' do
    expect(subject).to respond_to(:collect)
  end

  describe '#collect' do
    let(:docking_station) { double :docking_station }
    let(:bike) { double :bike }
    let(:repair_shop) { double :repair_shop }

    it 'collects a broken bike from a docking station' do
      allow(bike).to receive(:working?).and_return(false)
      allow(docking_station).to receive(:dock).and_return(bike)
      allow(repair_shop).to receive(:class).and_return(RepairShop)
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
      allow(repair_shop).to receive(:bikes)
      allow(repair_shop.bikes).to receive(:include?).and_return(true)
      allow(repair_shop.bikes).to receive(:delete).and_return(bike)
      expect(subject.collect(bike, repair_shop)).to eq(bike)
    end

    it 'does not collect a broken bike from the repair shop' do
      allow(bike).to receive(:working?).and_return(false)
      allow(repair_shop).to receive(:bikes)
      allow(repair_shop.bikes).to receive(:include?).and_return(true)
      allow(repair_shop).to receive(:class).and_return(RepairShop)
      expect { subject.collect(bike, repair_shop) }.to raise_error("This bike is in need of repair")
    end

    it 'does not collect a non existent bike' do
      allow(bike).to receive(:working?).and_return(false)
      allow(docking_station).to receive(:bikes)
      allow(docking_station.bikes).to receive(:include?).and_return(false)
      expect { subject.collect(bike, docking_station) }.to raise_error("Bike not found")
    end
  end
  
  describe '#deliver' do
    let (:bike) { double :bike }
    let (:docking_station) { double :docking_station }
    let (:repair_shop) { double :repair_shop }

    it 'removes a bike from its array upon delivery' do
      allow(docking_station).to receive(:bikes)
      allow(docking_station.bikes).to receive(:push).and_return(bike)
      allow(repair_shop).to receive(:bikes)
      allow(repair_shop.bikes).to receive(:include?).and_return(true)
      allow(bike).to receive(:working?).and_return(true)
      allow(repair_shop.bikes).to receive(:delete)
      subject.collect(bike, repair_shop)
      expect(subject.deliver(bike, docking_station)).to eq(bike)
    end
  end
end

require 'van'

describe Van do 
  it 'responds to collect_bikes' do
    expect(subject).to respond_to(:collect_bikes)
  end

  describe '#collect_bikes' do
    let(:docking_station) { double :docking_station }
    let(:bike) { double :bike }
    it 'collects a bike' do
      expect(subject.collect_bikes(docking_station)).to eq("Broken bikes collected")
    end
  end 
end

require 'garage'

describe Garage do

  it 'responds to repair' do
    expect(subject).to respond_to(:repair)
  end

  describe '#repair' do

    it 'repairs a broken bike' do
      bike = double('Bike')
      allow(bike).to receive(:fix).and_return(true)
      expect(subject.repair(bike)).to eq(true)
    end
  end
end

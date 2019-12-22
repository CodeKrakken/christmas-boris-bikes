require 'bike'

describe Bike do

  it 'is working when initialized' do
    expect(subject.working?).to eq(true)
  end

  it 'responds to broken' do
    expect(subject).to respond_to :broken
  end

  it 'can be reported as broken' do
    subject.broken
    expect(subject.working?).to eq(false)
  end
end
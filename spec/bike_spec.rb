require 'bike'

describe Bike do
  it 'responds to working?' do
    expect(subject).to respond_to :working?
  end

  it 'responds to broken' do
    expect(subject).to respond_to :broken
  end

end
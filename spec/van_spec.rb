require 'van'

describe Van do 
  it 'responds to collect_bikes' do
    expect(subject).to respond_to(:collect_bikes)
  end
end

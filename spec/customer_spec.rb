require './lib/customer.rb'

describe Customer do

  let(:shan) {Customer.new('Shan', '07525495989')}
  
  it 'should have a name' do
    expect(shan.name).to eq('Shan')
  end

  it 'should have a number' do
    expect(shan.number).to eq('07525495989')
  end

  it 'should not have a invalid number' do
    expect{monika = Customer.new('Monika', '0764839274')}.to raise_error('Number not valid')
  end

end
require 'takeaway.rb'

describe Takeaway do

  let(:takeaway) {Takeaway.new('Shan', order)}
  let(:customer) {double :customer, name: 'Shan', number: '07525495989'}
  let(:order) {double :order}
  let(:takeaway_double) {double :takeaway}


  it 'is initialized with the name of the customer' do
    expect(takeaway.customer).to eq('Shan')
  end

  it 'is initialized with an order' do
    expect(takeaway.order).to eq(order)
  end

  it 'sends a message' do
    allow(order).to receive(:calculate)
    allow(takeaway_double).to receive(:send_sms)
    takeaway_double.send_sms
  end

end
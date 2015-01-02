require 'takeaway.rb'

desribe Takeaway do

  let(:takeawat {Takeaway.new})
  let(:customer) {double :customer, name: 'Shan', number: '07525495989'}
  let(:order) {double :order}


  it 'is initialized with the name of the customer' do
    expect(takeaway.customer).to eq(Shan)
  end

  it 'is initialized with an order' do
    expect(takeaway.order).to eq(order)
  end

  it 'sends a message' do
    takeaway.send_sms
  end

end
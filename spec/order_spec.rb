require 'order.rb'

describe Order do

  let(:order) {Order.new}
  let(:chicken) {double :dish, price: 4}
  let(:beef) {double :dish, price: 5}
  
  it 'should start of empty' do 
    expect(order.items).to eq []
  end

  it 'the bill should be zero' do
    expect(order.total).to eq nil
  end

  it "should be able to add a dish" do
    order.add(chicken)
    expect(order.items).to eq [chicken]
  end

  it 'should let you remove a dish' do
    order.add(chicken)
    order.remove(chicken)
    expect(order.items).to eq []
  end

  it 'should let you know the current total' do
    order.add(chicken)
    order.add(beef)
    expect(order.total).to eq 9
  end

  it "should let you see the order list" do
    order.add(chicken)
    order.add(beef)
    expect(order.list).to eq [chicken, beef]
  end

end
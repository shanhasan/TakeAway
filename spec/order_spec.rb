require 'order.rb'

describe Order do

  let(:order) {Order.new}
  let(:chicken) {double :dish}
  let(:beef) {double :dish}

  def sample_order
    order.add(chicken)
    order.remove(chicken)
  end
  
  it 'should start of empty' do 
    expect(order.items).to eq []
  end

  it 'the bill should be zero' do
    expect(order.total).to eq 0
  end

  it "should be able to add a dish" do
    order.add(chicken)
    expect(order.items).to eq [chicken]
  end

  it 'should let you remove a dish' do
    sample_order
    expect(order.items).to eq []
  end

  it 'should let you know the current total' do
    sample_order
    expect(order.total).to eq 7.50
  end

  it "should let you see the order list" do
    sample_order
    expect(order.show).to eq [chicken, beef]
  end

end
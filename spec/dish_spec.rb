require 'dish.rb'

describe Dish do

  let(:dish) {Dish.new('Steak', 4.00)}

  it 'should have a name' do
    expect(dish.name).to eq('Steak')
  end

  it 'should have a price' do
    expect(dish.price).to eq 4.00
  end

end
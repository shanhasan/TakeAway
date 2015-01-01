require 'menu.rb'

describe Menu do
  
  let(:menu) {Menu.new}
  let(:chicken) {double :dish}
  let(:beef) {double :dish}

  it 'should let dishes be added to the list' do
    menu.add(chicken)
    expect(menu.options).to eq [chicken]
  end

  it "should let dishes be deleted from the list" do
    menu.add(chicken)
    menu.delete(chicken)
    expect(menu.options).to eq []
  end

  it "should show all current dishes" do
    menu.add(chicken)
    menu.add(beef)
    menu.show
  end

end
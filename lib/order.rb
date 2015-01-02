class Order

  attr_reader :items, :bill

  def initialize
    @items = []
  end

  def add(dish)
    @items << dish
  end

  def remove(dish)
    items.delete(dish)
  end

  def list
    @items
  end

  def total
    @items.map(&:price).inject(:+)
  end

end
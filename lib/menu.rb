class Menu

  attr_reader :options

  def initialize
    @options = []
  end

  def add(dish)
    options << dish
  end

  def delete(dish)
    options.delete(dish)
  end

  def show
    options
  end


end
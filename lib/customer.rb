class Customer

  attr_reader :name, :number

  def initialize(name, number)
    raise 'Number not valid' if number.length < 11
    @name = name
    @number = number
  end

end
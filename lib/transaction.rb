class Transaction

  attr_reader :type, :date, :amount

  def initialize(type, date, amount)
    @type = type
    @date = date
    @amount = amount
  end

  def summary
    return [@type, @date, @amount]
  end

end

class Account

  attr_reader :transactions

  def initialize
    @transactions = []
  end

  def deposit(date, amount)
    hash = {}
    hash[date.to_sym] = amount
    @transactions << hash
  end

  def withdraw(date, amount)
    hash = {}
    hash[date.to_sym] = amount * -1
    @transactions << hash
  end

  def print
    puts @transactions
  end
end

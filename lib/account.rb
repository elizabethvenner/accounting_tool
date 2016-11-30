require_relative 'transaction'
require_relative 'statement'

class Account

  attr_reader :transactions

  def initialize
    @transactions = []
  end

  def deposit(type = 'deposit', date, amount)
    transaction = Transaction.new(type = 'deposit', date, amount)
    @transactions << transaction.summary
  end

  def withdraw(type = 'withdrawal',date, amount)
    transaction = Transaction.new(type = 'withdrawal', date, amount)
    @transactions << transaction.summary
  end

  def print_statement(transactions = @transactions)
    statement = Statement.new(transactions=@transactions)
    statement.print_transactions
  end
end

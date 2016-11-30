class Statement

  def initialize(transactions)
    @transactions = transactions
    @balance = 0
  end

  def sort_dates
    @transactions.sort_by!{|a,b,c| b }
    @transactions.reverse!
  end

  def print_transactions
    sort_dates
    puts 'date'.ljust(11) + '||'+ 'credit'.ljust(10) + '||' + 'debit'.ljust(10) + '||' + 'balance'.ljust(10)
    @transactions.each do |transaction|
      if transaction[0] == 'deposit'
        puts "#{transaction[1]}".ljust(11) + '||' + "#{transaction[2]}".ljust(10)  + '||' + ''.ljust(10) + '||' + "#{@balance += transaction[2]}".ljust(10)
      else
        puts "#{transaction[1]}".ljust(11) + '||'  + ''.ljust(10) + '||' + "#{transaction[2]}".ljust(10) + '||' + "#{@balance -= transaction[2]}".ljust(10)
      end
    end
  end

end

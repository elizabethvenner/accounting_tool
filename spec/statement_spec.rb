require 'statement'

describe Statement do
  transactions = [["withdrawal", "14/01/2012", 500],["deposit", "10/01/2012", 1000], ["deposit","13/01/2012", 2000]]
  subject(:statement) { described_class.new(transactions) }

  describe 'initializes with' do
    it 'a transactions array' do
      expect(statement.instance_variable_get(:@transactions)).to eq([["withdrawal", "14/01/2012", 500],["deposit", "10/01/2012", 1000], ["deposit","13/01/2012", 2000]])
    end

    it 'a balance of 0' do
      expect(statement.instance_variable_get(:@balance)).to eq(0)
    end
  end

  describe 'sort_dates' do
    it 'sorted transactions' do
      expect(statement.sort_dates).to eq([["withdrawal", "14/01/2012", 500], ["deposit","13/01/2012", 2000], ["deposit", "10/01/2012", 1000]],)
    end
  end

  describe 'print_transactions' do
    it 'printed transactions' do
      expect do
        statement.print_transactions
      end.to output('[{"10/01/2012"=>1000}]').to_stdout
    end
  end
end

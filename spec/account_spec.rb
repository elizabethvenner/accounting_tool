require 'account'

describe Account do

  subject(:account) { described_class.new }

  describe 'initializes with' do
    it 'an empty array of transactions' do
      expect(account.instance_variable_get(:@transactions)).to eq([])
    end
  end

  describe 'makes transaction' do
    it 'deposit' do
      account.deposit('10/01/2012', 1000)
      expect(account.transactions[0]).to eq(["deposit", "10/01/2012", 1000])
    end

    it 'withdraw' do
      account.withdraw('14/01/2012', 500)
      expect(account.transactions[0]).to eq(["withdrawal", "14/01/2012", 500])
    end
  end

  describe 'prints transactions' do
    before do
      account.deposit('10/01/2012', 1000)
      # account.deposit('13/01/2012', 2000)
      account.withdraw('14/01/2012', 500)
    end

    xit 'sorts dates' do
      expect(account.print_statement).to eq('hello')
    end

    xit 'prints' do
      expect do
        account.print_statement
      end.to output('[{"10/01/2012"=>1000}]').to_stdout
    end
  end
end

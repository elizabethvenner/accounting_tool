require 'account'
require 'deposit'

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
      expect(account.transactions[0]).to eq({'10/01/2012': 1000})
    end

    it 'withdraw' do
      account.withdraw('14/01/2012', 500)
      expect(account.transactions[0]).to eq({'14/01/2012': -500})
    end
  end

  describe 'prints transacations' do
    before do
      account.deposit('10/01/2012', 1000)
      account.deposit('13/01/2012', 2000)
      account.withdraw('14/01/2012', 500)
    end

    it 'prints' do
      expect(account.print).to eq(nil)

    end
  end
end

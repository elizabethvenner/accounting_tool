require 'account'

describe Account do

  subject(:account) { described_class.new }

  describe 'initializes with' do

    it 'an empty list of transactions' do
      expect(account.instance_variable_get(:@transactions)).to eq([])
    end

  end
end

require 'deposit'

describe Deposit do

  subject(:deposit) { described_class.new(50) }

  describe 'initializes with' do

    it 'a specified amount' do
      expect(deposit.amount).to eq(50)
    end
  end
end

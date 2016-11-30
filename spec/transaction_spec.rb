require 'transaction'

describe Transaction do

  subject(:transaction) { described_class.new('deposit', 29/11/2016, 50) }

  describe 'initializes with' do

    it 'a specified type' do
      expect(transaction.type).to eq('deposit')
    end

    it 'a specified date' do
      expect(transaction.date).to eq(29/11/2016)
    end

    it 'a specified amount' do
      expect(transaction.amount).to eq(50)
    end
  end

  it 'makes a summary' do
    expect(transaction.summary).to eq(['deposit', 29/11/2016, 50])
  end
end

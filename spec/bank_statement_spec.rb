require 'bank_statement'

describe BankStatement do

  subject(:statement) {described_class.new}


  context "is initialized with" do
    it "with an empty transaction history array" do
      expect(statement.transaction_history).to eq ([])
    end
  end



end
require 'bank_statement'

describe BankStatement do

  subject(:statement) {described_class.new}

  describe "#initialize" do
    it "with an empty transaction history array" do
      expect(statement.transaction_history).to eq ([])
    end
  end

  describe "#credit_transaction" do
    it "logs a credit transaction" do
      expect{statement.credit_transaction(Time.new,200,0)}.to change{statement.transaction_history.length}.by (1)
    end
  end

end

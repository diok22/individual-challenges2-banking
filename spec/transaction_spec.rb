require 'transaction'

describe Transaction do

  subject(:transaction) {described_class.new}

  describe "#initialize" do
    context "with empty (being zero) if no arguments are passed attributes of:" do
      it "time" do
        expect(transaction.time).to be 0
      end

      it "credit" do
        expect(transaction.credit).to be 0
      end

      it "debit" do
        expect(transaction.debit).to be 0
      end

      it "balance" do
        expect(transaction.balance).to be 0
      end
    end
  end
end

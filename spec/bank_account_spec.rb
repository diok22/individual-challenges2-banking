require 'bank_account'

describe BankAccount do

  subject(:bank_account) {described_class.new}

  context "exists as a class" do
    it "thus user can create a new bank account" do
      expect(bank_account.class).to eq BankAccount
    end
  end

  context "#initialize" do
    it "with an emtpy bank statement" do
      expect(bank_account.statement_history).to eq ([])
    end

    it "with a balance of zero money" do
      expect(bank_account.balance).to eq 0
    end
  end


end

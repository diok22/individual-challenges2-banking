require 'bank_account'

describe BankAccount do

  subject(:bank_account) {described_class.new}

  context "exists as a class" do
    it "thus user can create a new bank account" do
      expect(bank_account.class).to eq BankAccount
    end
  end

  context "is initialized with" do
    it "with an emtpy bank statement" do
      expect(bank_account.statement).to eq ([])
    end
  end



end

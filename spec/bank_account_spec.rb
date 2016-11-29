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

  context "#deposit" do
    it "increases the balance money" do
      expect{bank_account.deposit(50)}.to change{bank_account.balance}.from(0).to(50)
    end

    context "error" do
      it "raises if amount argument is a string" do
        expect{bank_account.deposit("10")}.to raise_error "Please enter correct amount as number"
      end

      it "is not raised if amount argument is an integer" do
        expect{bank_account.deposit(100)}.not_to raise_error
      end

      it "is not raised if amount argument is a float" do
        expect{bank_account.deposit(200.50)}.not_to raise_error
      end
    end
  end

  context "#withdraw" do
    it "decreases the balance money" do
      bank_account.deposit(70)
      expect{bank_account.withdraw(50)}.to change{bank_account.balance}.from(70).to(20)
    end





  end


end

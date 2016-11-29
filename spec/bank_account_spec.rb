require 'bank_account'

describe BankAccount do

  subject(:bank_account) {described_class.new}

  it "checks existance of the BankAccount class" do
    expect(bank_account.class).to eq BankAccount
  end



end

require_relative 'transaction'

class BankStatement

  attr_reader :transaction_history

  def initialize
    @transaction_history = []
  end

  def credit_transaction(time, amount, balance)
    deposit_transaction = Transaction.new(time=time, credit=amount, balance=balance)
    @transaction_history << deposit_transaction
  end

  def debit_transaction(time, amount, balance)
    withdraw_transaction = Transaction.new(time=time, credit=amount, balance=balance)
    @transaction_history << withdraw_transaction
  end

end

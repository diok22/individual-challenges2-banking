require_relative 'transaction'

class BankStatement

  attr_reader :transaction_history

  def initialize
    @transaction_history = []
  end

  def credit_transaction(time, amount, balance)
    deposit_transaction = Transaction.new(time=time, credit=amount, debit=0, balance=balance)
    @transaction_history << deposit_transaction
  end

  def debit_transaction(time, amount, balance)
    withdraw_transaction = Transaction.new(time=time, credit=0, debit=amount, balance=balance )
    @transaction_history << withdraw_transaction
  end

  def print_statement
    @transaction_history.unshift('date || credit || debit || balance') unless @transaction_history.include?('date || credit || debit || balance')
  end


end

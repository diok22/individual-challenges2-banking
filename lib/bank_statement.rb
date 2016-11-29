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

  def list_transactions
    @display = "date || credit || debit || balance" + "\n"
    transaction_per_line
  end

  private

  def transaction_per_line
    @transaction_history.reverse.map do |transaction|
      converted_date = transaction.time.strftime("%d/%m/%Y")
      @display << "#{converted_date} || #{transaction.credit} || #{transaction.debit} || #{transaction.balance}" + "\n"
    end
    puts @display
  end

end

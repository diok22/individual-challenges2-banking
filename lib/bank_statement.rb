require_relative 'transaction'

class BankStatement

  attr_reader :transaction_history

  def initialize
    @transaction_history = []
  end

  def credit_transaction(time, amount, balance)
    transaction = Transaction.new(time=time, credit=amount, balance=balance)
    @transaction_history << transaction
end

end

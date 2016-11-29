require_relative 'bank_statement'

class BankAccount

  attr_reader :statement, :balance

  def initialize
    @statement = BankStatement.new
    @balance = 0
  end

  def statement_history
    @statement.transaction_history
  end

  def deposit(amount)
    raise "Please enter correct amount as number" unless (amount.is_a? Numeric)
    @balance += amount
  end

end

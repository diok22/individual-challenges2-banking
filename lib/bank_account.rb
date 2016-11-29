require_relative 'bank_statement'

class BankAccount

  attr_reader :statement, :balance

  def initialize(balance=0)
    @statement = BankStatement.new
    @balance = balance
  end

  def statement_history
    @statement.transaction_history
  end

  def deposit(amount)
    raise "Please enter correct amount as number" unless (amount.is_a? Numeric)
    @balance += amount
  end

  def withdraw(amount)
    raise "Please enter correct amount as number" unless (amount.is_a? Numeric)
    raise "Sorry, you don't have that much money to withdraw" unless (@balance >= amount)
    @balance -= amount
  end

end

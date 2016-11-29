require_relative 'bank_statement'
require_relative 'transaction'

class BankAccount

  attr_reader :statement, :balance

  ZERO_OPENING_BALANCE = 0


  def initialize(opening_balance=ZERO_OPENING_BALANCE)
    @statement = BankStatement.new
    @balance = opening_balance
  end

  def statement_history
    @statement.transaction_history
  end

  def deposit(amount, time=Time.now)
    raise "Please enter correct amount as number" unless is_number(amount)
    @balance += amount
  end

  def withdraw(amount)
    raise "Please enter correct amount as number" unless is_number(amount)
    raise "Sorry, you don't have that much money to withdraw" unless (@balance >= amount)
    @balance -= amount
  end

  private

  def is_number(amount)
    amount.is_a? Numeric
  end

end

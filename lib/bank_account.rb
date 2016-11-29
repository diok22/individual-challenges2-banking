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
    error_deposit(amount)
    @balance += amount
    @statement.credit_transaction(time, amount, balance=@balance)
  end

  def withdraw(amount, time=Time.now)
    error_withdraw(amount)
    @balance -= amount
    @statement.debit_transaction(time, amount, balance=@balance)
  end

  def statement
    @statement.print_statement
  end

  private

  def is_number(amount)
    amount.is_a? Numeric
  end

  def error_deposit(amount)
    raise "Please enter correct amount as number" unless is_number(amount)
  end

  def error_withdraw(amount)
    raise "Please enter correct amount as number" unless is_number(amount)
    raise "Sorry, you don't have that much money to withdraw" unless (@balance >= amount)
  end


end

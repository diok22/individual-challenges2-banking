require_relative 'bank_statement'

class BankAccount

  attr_reader :statement

  def initialize
    @statement = BankStatement.new
  end

  def statement_history
    @statement.transaction_history
  end


end

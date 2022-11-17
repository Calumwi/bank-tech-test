

class Account
  def initialize
    @deposits = {}
    @withdrawals = {}
    @transactions = {}
    @cashflow = {}
    @starting_balance = 0
    @start_date = '15-11-22'
    @balance = {@start_date => @starting_balance}
  end

  def deposit(amount_deposited, date_deposited)
    @deposits.store(date_deposited, amount_deposited)
    @balance.store(date_deposited, @starting_balance.to_i + amount_deposited.to_i)
    return @deposits
  end

  def withdraw(amount_withdrawn, date_withdrawn)
    @withdrawals.store(date_withdrawn, amount_withdrawn)
    @balance.store(date_withdrawn, @starting_balance.to_i - amount_withdrawn.to_i)
    return @withdrawals
  end

  def print_statement
    @cashflow = @deposits.merge(@withdrawals)
    @transactions = @cashflow.merge(@balance)
    return @transactions.sort.flatten
  end
end

account = Account.new
account.deposit(1000,'16-11-22')
account.withdraw(500, '17-11-22')
account.print_statement

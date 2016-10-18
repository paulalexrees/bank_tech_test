class Account

  attr_reader :balance, :transactions

  def initialize(balance = 0)
    @balance = balance
    @transactions = []
  end

  def deposit(amount)
    @balance += amount
    @transactions << {deposit:amount, balance:balance}
    balance
  end

  def withdraw(amount)
    @balance -= amount
    @transactions << {withdrawal:amount, balance:balance}
    balance
  end

  def print_statement
    statement_header + statement_rows
  end

  private

  def statement_header
    "date       ||  credit  ||  debit  ||  balance  "
  end

  def statement_rows
    if !transactions.empty?
      "date       ||   #{transactions.first[:deposit]}   ||         ||     #{transactions.first[:balance]}  "
    else
      ""
    end
  end

end

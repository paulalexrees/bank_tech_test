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
  
  end

end

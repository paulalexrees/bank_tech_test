require_relative 'transaction.rb'

class Account

  attr_reader :balance, :transactions

  def initialize(balance = 0)
    @balance = balance
    @transactions = []
  end

  def deposit(amount)
    @balance += amount
    @transactions << Transaction.new("deposit", amount, balance)
  end

  def withdraw(amount)
    @balance -= amount
    @transactions << Transaction.new("withdrawal", amount, balance)
  end

  def print_statement
    "#{statement_header}\n#{statement_rows}"
  end

  private

  def statement_header
    "date        ||  credit  ||  debit  ||  balance  "
  end

  def statement_rows
    rows = ""
    transactions.each do |t|
      rows << build_columns(t)
    end
    rows
  end

  def build_columns(t)
    "#{formatted_date(t.date)}||"+
      "#{credit_col(t.type, t.amount)}||"+
        "#{debit_col(t.type, t.amount)}||"+
          "#{balance_col(t.balance)}\n"
  end

  def credit_col(type, amount)
    if type == "deposit"
      amount_str = amount.to_s
      while amount_str.length < 10
        amount_str << " "
      end
      amount_str
    else
      "          "
    end
  end

  def debit_col(type, amount)
    if type == "withdrawal"
      amount_str = amount.to_s
      while amount_str.length < 9
        amount_str << " "
      end
      amount_str
    else
      "         "
    end
  end

  def balance_col(balance)
    balance
  end

  def formatted_date(date)
    date_string = date.strftime("%d/%m/%Y")
    while date_string.length < 12
      date_string << " "
    end
    date_string
  end

end

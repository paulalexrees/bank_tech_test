class Transaction

  attr_reader :type, :amount, :date, :balance

  def initialize(type, amount, balance)
    @type = type
    @amount = amount
    @date = Date.today
    @balance = balance
  end

end

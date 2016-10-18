require './lib/account.rb'

account = Account.new
account.deposit(2000)
account.withdraw(1000)

puts account.print_statement

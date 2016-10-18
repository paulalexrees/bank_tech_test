! This tech test is essentially unfinished !

Basic requirements met at present.

    require './lib/account.rb'
    account = Account.new
    account.deposit(2000)
    account.withdraw(1000)
    account.print_statement


Currently I'm happy with the interaction between Account and Transaction classes.

Formatting for the statement printing became a bit long-winded and needs to be extracted to its own class.


## Specification

### Requirements

* You should be able to interact with the your code via IRB.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012
**And** a deposit of 2000 on 13-01-2012
**And** a withdrawal of 500 on 14-01-2012
**When** she prints her bank statement
**Then** she would see

```
date       || credit || debit   || balance
14/01/2012 ||        || 500.00  || 2500.00
13/01/2012 || 2000.00||         || 3000.00
10/01/2012 || 1000.00||         || 1000.00
```

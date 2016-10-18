describe Account do

  let(:account){ described_class.new }

  context "init" do

    it "initializes with 0 balance as default" do
      expect(account.balance).to eq 0
    end

    it "can initialize with custom balance" do
      expect(Account.new(1000).balance).to eq 1000
    end

  end

  context "transactions" do

    before { account.deposit(2000) }

    it "adds funds on deposit" do
      expect(account.balance).to eq 2000
    end

    it "subtracts funds on withdrawal" do
      account.withdraw(1000)
      expect(account.balance).to eq 1000
    end

    it "saves each transaction" do
      account.withdraw(1000)
      expect(account.transactions).to eq [{deposit:2000, balance:2000}, {withdrawal:1000, balance:1000}]
    end

  end

  context "statement printing" do

    it "prints statement header" do
      header = "date       ||  credit  ||  debit  ||  balance  "
      expect(account.print_statement).to include header
    end

    it "prints statement rows" do
      account.deposit(2000)
      row = "date       ||   2000   ||         ||     2000  "
      expect(account.print_statement).to include row
    end

  end



end

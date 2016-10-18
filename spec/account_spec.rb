describe Account do

  let(:account){ described_class.new }

  it "has a balance" do
    expect(account.balance).to be_a Integer
  end

end

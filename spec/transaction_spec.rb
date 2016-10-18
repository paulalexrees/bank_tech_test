describe Transaction do

  let(:deposit) { described_class.new("deposit", 1000, 1000) }

  it "has an amount" do
    expect(deposit.amount).to eq 1000
  end

  it "has a date" do
    expect(deposit.date).to eq Date.today
  end

  it "has a type" do
    expect(deposit.type).to eq "deposit"
  end

  it "has a balance" do
    expect(deposit.balance).to eq 1000
  end



end

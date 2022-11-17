require './lib/account'

account = Account.new
account_with_deposit = account.deposit(1000,'16-11-22')
account_with_withdrawal = account.withdraw(500, '17-11-22')


RSpec.describe "account Class" do
  it 'returns an empty hash' do
    expect(account_with_deposit).to include('16-11-22' => 1000)
  end

#   it 'check deposits hash is correctly storing keys and values' do
#     expect(account_with_deposit).to include('16-11-22' => 1000)
#   end

  it 'checks balance hash is correctly updating' do
    expect(account_with_deposit).to include('16-11-22' => 1000)
  end

  it 'checks withdrawalss hash is correctly storing keys and values' do
    expect(account_with_withdrawal).to include('17-11-22' => 500)
  end
end  
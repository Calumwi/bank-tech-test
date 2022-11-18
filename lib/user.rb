require './lib/account'

account = Account.new

def make_deposit(account)
        puts "Enter date"
        date_input = gets.chomp
        # validate that input is date format
        puts "Enter amount"
        amount_input = gets.chomp
        # validate that its a number
        account.deposit(amount_input, date_input)
        account.print_statement
end

def make_withdrawal(account)
        puts "Enter date"
        date_input = gets.chomp
        # validate that input is date format
        puts "Enter amount"
        amount_input = gets.chomp
        # validate that its a number
        account.withdraw(amount_input, date_input)
        account.print_statement
end


def run(account)
    puts "What would you like to do? [Withdraw/Deposit]"
    choice = gets.chomp
    if choice == "Withdraw"
        make_withdrawal(account)
    elsif choice == "Deposit"
        make_deposit(account)
    else
        puts "Invalid input"
        run
    end
end

run(account)
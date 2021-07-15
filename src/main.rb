def menu( )
   puts "1. Show Balance"
   puts "2. Deposit"
   puts "3. Withdraw"
   puts "4. Exit"
end

def deposit( balance )
  puts "How much to deposit?"
  amount = gets.to_i
  if amount > 0
    balance = balance + amount
  end
  return balance
end

def withdraw( balance )
  puts "How much to withdraw?"
  amount = gets.to_i
  if amount > balance
    puts "Cannot withdraw more than what is in the account"
  elsif amount >= 0
    balance = balance - amount
  end
  return balance
end

choice = 0
balance = 0

begin
  while choice != 4
    menu( )
    puts "Choose an option:"
    choice = gets.to_i
    if choice == 1
      puts "Your Balance Is: "
      puts balance
    elsif choice == 2
      balance = deposit( balance )
    elsif choice == 3
      balance = withdraw( balance )
    elsif choice > 4
      puts "That is not an option"
    end
  end
end

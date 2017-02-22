# Coin Changer 

Write a function that takes a number of cents, and then returns a hash containing 
the least number of coins needed to generate the value of cents.

If you have 11 cents, you should return {:dime => 1, :penny => 1}
If you have 31 cents, you should return {:quarter => 1, :nickel => 1, :penny  => 1}

start a new repo
build up your coin_changer using tests
commit to git after every test.

File Index

- CoinCounter.rb # outputs a hash of coins required to make appropriate change from input (*test_coincounter.rb*)
- CashRegister.rb # takes 2 inputs, cost and paid, as decimal-based inputs and outputs hash of bills and coins due as change (*test_cashregister.rb*)
- app.rb # Sinatra app using CashRegister.rb
- inclass_coinchanger.rb # class demo where code started with simple if..end statement and grew to repetitive logic.  final result resembles my original coincounter.rb (*test_inclass_coinchanger.rb*)
- *views\register.erb # single view to play with html syntax and css
- *public\styles.css # stylesheet to play with css
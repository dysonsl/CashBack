def coinchanger(input)

	change_values = {quarter: 25, dime: 10, nickel: 5, penny: 1} # hash of coin name and value

	coin_return = Hash.new	#new hash being created

	change_values.each do |coin_name, coin_value|	#iteration over hash assigning key/value to coin_name/coin_value 
		if input >= coin_value		#conditional check to compare input value to value of first pair
			coin_count = input / coin_value  #simple math to determine quantity of key required
			coin_return[coin_name] = coin_count   #update new hash with key name and quantity needed
			input -= (coin_count * coin_value)  # subtract value of key/quantity to determine remaining amount
		end
	end
	coin_return  # ensure function outputs the new hash with key/quantities required

end

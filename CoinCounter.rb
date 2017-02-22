def coinchanger(input)

	change_values = {quarter: 25, dime: 10, nickel: 5, penny: 1}

	coin_return = Hash.new

	change_values.each do |coin_name, coin_value|
		if input >= coin_value
			coin_count = input / coin_value
			coin_return[coin_name] = coin_count
			input -= (coin_count * coin_value)
		end
	end
	coin_return

end

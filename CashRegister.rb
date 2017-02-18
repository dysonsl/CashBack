def cash_register(cost, paid)

	calc_difference = (paid - cost) * 100  # remove decimal point
	difference = calc_difference.round(3).to_i  # remove float with correct rounding.
#	puts difference
	change_values = {:fifty => 5000, :twenty => 2000, :ten => 1000, :five => 500, :dollar => 100, :quarter => 25, :dime => 10, :nickel => 5, :penny => 1}

	coin_return = Hash.new
	change_values.each do |coin_name, coin_value|
		if difference >= coin_value
			coin_count = difference / coin_value
			coin_return[coin_name] = coin_count
			difference = difference - (coin_count * coin_value)
		end
	end
	coin_return

end

# cash_register(34.00,40.00)
# cash_register(34.01,40.00)
# cash_register(34.02,40.00)
# cash_register(34.03,40.00)
# cash_register(34.04,40.00)
# cash_register(34.05,40.00)
# cash_register(34.06,40.00)
# cash_register(34.07,40.00)
# cash_register(34.08,40.00)
# cash_register(34.09,40.00)
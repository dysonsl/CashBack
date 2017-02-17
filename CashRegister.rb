def cash_register(cost, paid)

	calc_difference = (paid * 100) - (cost * 100)  # remove decimal point
	difference = calc_difference.to_i  # remove float...it causes issues for some reason

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
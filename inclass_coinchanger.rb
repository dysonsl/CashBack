def coinchanger(amount)

	change = {}
	quarter = 25

	if amount >= quarter
		coin_count = amount / quarter
		change[:quarter] = coin_count
		amount -= (quarter * coin_count)
	end

	if amount >= 10
		coin_count = amount / 10
		change[:dime] = coin_count
		amount -= (10 * coin_count)
	end

	if amount >= 5
		change[:nickel] = 1
		amount -= 5
	end

	if amount >= 1
		change[:penny] = amount
	end
	change
	
end
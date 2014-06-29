def stock_picker(prices_list)
	include Enumerable
	#find the day with the lowest price
	prices=prices_list
	buy_price = prices.min
	while prices.last == buy_price
		prices.pop
		buy_price = prices.min
		buy_day = prices.index(buy_price)
	end
	sell_price = prices.slice(buy_day,prices.size).max
	sell_day = prices.slice(buy_day,prices.size).index(sell_price)+buy_day
	return [buy_day, sell_day]
end

print stock_picker([3,5,2,4,4,1])
# This project will take an array of prices and return the an array of the best days
# to buy and sell for a maximum return on profit. 

def stock_picker(daily_prices)
  highest_profit = 0  # create variable to track highest profit
  best_buy_sell_days = [] # create an array variable for best buy and sell day

  daily_prices.each_with_index do |buy_price, buy_index| # iterate over daily prices 
    daily_prices[buy_index + 1..].each_with_index do |sell_price, sell_index| # iterate over all prices after buy price
      if sell_price - buy_price > highest_profit  # check if highest profit
        highest_profit = sell_price - buy_price # update highest profit
        best_buy_sell_days = [buy_index, daily_prices.index(sell_price)]  # update best buy and sell dates
      end
    end
  end
  return best_buy_sell_days # return indexes of the best days to buy and sell
end
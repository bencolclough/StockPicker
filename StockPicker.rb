# Stock Picker

def stock_prices(stock_price_array)
    last_buy_price = stock_price_array.length - 1
    max_profit = stock_price_array.min - stock_price_array.max #gives it the minimum possible value to build from there
    max_buy = 0
    max_sell = 0
    buy_day = 0
    sell_day = 0

    for b in 0..last_buy_price do
        for s in b+1..last_buy_price do
            
            profit = stock_price_array[s] - stock_price_array[b] 

            if profit > max_profit
                max_profit = profit
                max_buy = stock_price_array[b]
                max_sell = stock_price_array[s]
                buy_day = b+1
                sell_day = s+1
            end    
        end
    end
    
    if max_profit > 0 
        puts "The maximum profit available is #{max_profit} if you buy at #{max_buy} on day #{buy_day} and sell at #{max_sell} on day #{sell_day}"
    elsif max_profit === 0
        puts "The markets must be closed, the stock price hasn't moved #{max_buy} & #{max_sell} & #{max_profit}"
    else puts "The minimum loss available is #{max_profit} if you buy at #{max_buy} on day #{buy_day} and sell at #{max_sell} on day #{sell_day}"
    end    
    end

puts = stock_prices([5,4,3,2,1])

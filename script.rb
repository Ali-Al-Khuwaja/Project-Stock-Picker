def stock_picker(array)
  best_selling_day = 0
  best_buying_day = 0
  best_profit = 0

  array.each_with_index do |value,index|
    array.each_with_index do |other_value , other_index|
      if index == other_index
        next
      else
        if other_index > index 
          profit = other_value - value 
          if profit > best_profit
            best_profit = profit
            best_buying_day = index
            best_selling_day = other_index
          end
        end 
      end      
    end
  end
  puts "[#{best_buying_day} , #{best_selling_day}]"
end

stock_picker([17,3,6,9,15,8,6,1,10])

#  => [1,4]  # for a profit of $15 - $3 == $12



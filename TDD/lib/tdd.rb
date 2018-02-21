class Array
  def my_uniq
    uniq_hash = Hash.new(0)

    each { |el| uniq_hash[el] += 1 }

    uniq_hash.keys
  end

  def two_sum
    output = []

    each_index do |idx|
      next if idx == length
      idx2 = idx + 1

      while idx2 < length
        if self[idx] + self[idx2] == 0 && self[idx] != 0
          output << [idx, idx2]
        end
        idx2 += 1
      end
    end
    output
  end

  def my_transpose

    output = Array.new(length) { [] }

    each_index do |idx|
      row = self[idx]
      row.each_index do |jdx|
        el = row[jdx]
        output[jdx] << el
      end
    end

    output
  end
end

def stock_picker(prices)

  best_stocks = nil
  stock_diff = 0

  prices.each_with_index do |price1, day1|
    prices[day1..-1].each_with_index do |price2, day2|
      if price2 - price1 > stock_diff
        best_stocks = [day1, day2 + day1]
        stock_diff = price2 - price1
      end
    end
  end

  best_stocks
end

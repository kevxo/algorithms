def sockMerchant(n, ar)
  pairs = 0
  colors = get_total_sock_color(n, ar)

  colors.each do |color, amount|
    if colors[color] > 1 && colors[color].even?
      pair_count = amount / 2
      pairs += pair_count
    elsif colors[color] > 1 && colors[color].odd?
      pair_count = (amount - 1) / 2
      pairs += pair_count
    end
  end
  pairs
end

def get_total_sock_color(n, ar)
  hash = Hash.new(0)

  if n >= 1
    ar.each do |num|
      if hash[num]
        hash[num] += 1
      else
        hash
      end
    end
  end

  hash
end

p sockMerchant(9, [10, 20, 20, 10, 10, 30, 50, 10, 20])
p sockMerchant(7, [1, 2, 1, 2, 1, 3, 2])
p sockMerchant(5, [2, 3, 1, 2, 8])

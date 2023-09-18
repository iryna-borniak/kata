require 'prime'

def gap(prime_gap, min, max)
  prev_prime = nil

  (min..max).each do |cur_num|
    next unless cur_num.prime?
    return [prev_prime, cur_num] if prev_prime && cur_num - prev_prime == prime_gap

    prev_prime = cur_num
  end

  nil
end

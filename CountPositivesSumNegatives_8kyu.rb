def count_positives_sum_negatives(arr)
  return [] if arr.nil? || arr.empty?

  positive_count = arr.count(&:positive?)
  negative_sum = arr.reduce(0) { |acc, cur| cur.negative? ? acc + cur : acc }

  [positive_count, negative_sum]
end

def get_rainfall_values(town, strng)
  city_data = strng.split("\n").select { |data| data.match(/#{town}:/) }
  city_data.join.scan(/\d+\.\d+/).map(&:to_f)
end

def mean(town, strng)
  rainfall_values = get_rainfall_values(town, strng)
  return -1 if rainfall_values.empty?

  rainfall_values.sum / rainfall_values.length
end

def variance(town, strng)
  rainfall_values = get_rainfall_values(town, strng)
  return -1 if rainfall_values.empty?

  avg_rainfall = mean(town, strng)
  rainfall_values.sum { |el| (el - avg_rainfall)**2 } / rainfall_values.length
end

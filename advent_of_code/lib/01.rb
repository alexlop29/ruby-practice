def depth_measurement_increase(input)
  split_sea_level_data = input.split
  int_sea_level_data = split_sea_level_data.map(&:to_i)

  counter = 0

  int_sea_level_data.each_with_index do |data, index|
    break if index == int_sea_level_data.size - 1
  
    upcoming_data_point = int_sea_level_data[index + 1]
  
    counter += 1 if data < upcoming_data_point
  end

  puts counter

  return counter
end

def sliding_window_increase(input)
  split_sea_level_data = input.split
  int_sea_level_data = split_sea_level_data.map(&:to_i)

  counter = 0 

  int_sea_level_data.each_with_index do |_data, index|
    break if index == int_sea_level_data.size - 3
  
    first_window_sum = int_sea_level_data[index] + int_sea_level_data[index + 1] + int_sea_level_data[index + 2]
    second_window_sum = int_sea_level_data[index + 1] + int_sea_level_data[index + 2] + int_sea_level_data[index + 3]
  
    counter += 1 if first_window_sum < second_window_sum
  end

  puts counter

  return counter

end

DIRECTORY = __dir__
SEA_LEVEL_REPORT = File.join(DIRECTORY, '../inputs/01.txt')
SEA_LEVEL_DATA = File.read(SEA_LEVEL_REPORT)

depth_measurement_increase(SEA_LEVEL_DATA)
sliding_window_increase(SEA_LEVEL_DATA)

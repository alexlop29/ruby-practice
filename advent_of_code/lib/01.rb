def sonar_sweep(input)
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

DIRECTORY = __dir__
SEA_LEVEL_REPORT = File.join(DIRECTORY, '../inputs/01.txt')
SEA_LEVEL_DATA = File.read(SEA_LEVEL_REPORT)

sonar_sweep(SEA_LEVEL_DATA)




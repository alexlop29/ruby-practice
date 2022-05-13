def calculate_gamma_rate(input)
  gamma_rate = ''
  data = input.split("\n")
  for i in 0..data[0].length - 1
    count_of_zeroes = 0
    count_of_ones = 0
    data.each do |num|
      binary = num.split('')
      binary[i] == '0' ? count_of_zeroes += 1 : count_of_ones += 1
    end
    count_of_zeroes > count_of_ones ? gamma_rate.concat('0') : gamma_rate.concat('1')
  end
  return gamma_rate
end

def calculate_epsilon_rate(input)
  epsilon_rate = ''
  data = input.split("\n")
  for i in 0..data[0].length - 1
    count_of_zeroes = 0
    count_of_ones = 0
    data.each do |num|
      binary = num.split('')
      binary[i] == '0' ? count_of_zeroes += 1 : count_of_ones += 1
    end
    count_of_zeroes < count_of_ones ? epsilon_rate.concat('0') : epsilon_rate.concat('1')
  end
  return epsilon_rate
end

def calculate_power_consumption(input)
  gamma_rate = calculate_gamma_rate(input).to_i(2)
  epsilon_rate = calculate_epsilon_rate(input).to_i(2)
  # puts gamma_rate * epsilon_rate
  return gamma_rate * epsilon_rate
end

# DIRECTORY = __dir__
# DATA = File.join(DIRECTORY, '../inputs/03.txt')
# READ_DATA = File.read(DATA)

# calculate_power_consumption(READ_DATA)

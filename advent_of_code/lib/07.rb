# frozen_string_literal: true

def least_fuel_possible(input)
  horizontal_positions = input.split(',').map(&:to_i)
  max_position = horizontal_positions.max + 1
  least_fuel = []
  max_position.times do |i|
    fuel_count = 0
    horizontal_positions.each { |position| fuel_count += (position - i).abs }
    least_fuel.push(fuel_count)
  end
  puts least_fuel.min
  least_fuel.min
end

def least_fuel_possible_with_cost_consumption(input)
  horizontal_positions = input.split(',').map(&:to_i)
  max_position = horizontal_positions.max + 1
  least_fuel = []
  max_position.times do |i|
    fuel_count = 0
    horizontal_positions.each do |position|
      1.upto((position - i).abs) { |step| fuel_count += step }
    end
    least_fuel.push(fuel_count)
  end
  puts least_fuel.min
  least_fuel.min
end

DIRECTORY = __dir__
DATA = File.join(DIRECTORY, '../inputs/07.txt')
READ_DATA = File.read(DATA)

least_fuel_possible(READ_DATA)
least_fuel_possible_with_cost_consumption(READ_DATA)

# Determine the class of a variable
# puts horizontal_positions.is_a?Array

# Output a variable in its standard format
# puts horizontal_positions.inspect

# An easier way to add numbers from one to n
# (1..4).inject(:+) (add)
# (1..4).inject(:*)
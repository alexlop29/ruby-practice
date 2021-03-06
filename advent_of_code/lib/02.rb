# frozen_string_literal: true

def calculate_position_and_depth(input)
  directions = input.split("\n")
  horizontal_position = 0
  depth = 0
  directions.each_with_index do |data, _index|
    direction_by_change = data.split(' ')
    case direction_by_change[0]
    when 'forward' then horizontal_position += direction_by_change[1].to_i
    when 'up' then depth -= direction_by_change[1].to_i
    else depth += direction_by_change[1].to_i
    end
  end
  return "position #{horizontal_position} depth #{depth}"
end

def multiply_position_and_depth(input)
  calculations = calculate_position_and_depth(input)
  split_calculations = calculations.split(' ')
  final_answer = split_calculations[1].to_i * split_calculations[3].to_i
  return final_answer
end

DIRECTORY = __dir__
PLANNED_COURSE = File.join(DIRECTORY, '../inputs/02.txt')
PLANNED_COURSE_DATA = File.read(PLANNED_COURSE)

puts calculate_position_and_depth(PLANNED_COURSE_DATA)
puts multiply_position_and_depth(PLANNED_COURSE_DATA)
